import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riyadh_kmcc_new/core/extensions.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

import '../../../core/constants/font_constants.dart';
import '../../../core/utils.dart';
import '../../../theme/palette.dart';
import '../../home/screens/bottom_bar.dart';
import '../controller/auth_controller.dart';

class SurveyScreen extends ConsumerStatefulWidget {
  final Map<String, dynamic> survey;
  const SurveyScreen({super.key, required this.survey});

  @override
  ConsumerState<SurveyScreen> createState() => _SurveyScreenState();
}

class _SurveyScreenState extends ConsumerState<SurveyScreen> {
  final selectedProvider = StateProvider<String>((ref) {
    return "";
  });
  final surveyProvider = StateProvider<Map<String, dynamic>>((ref) {
    return {};
  });

  RoundedLoadingButtonController roundedLoadingController =
      RoundedLoadingButtonController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(surveyProvider.notifier).update((state) => widget.survey);
    });
  }

  submitAnswer({
    required BuildContext context,
    required int questionId,
    required int surveyId,
    required String answer,
  }) async {
    var surveyData =
        await ref.watch(authControllerProvider.notifier).submitSurvey(
              context: context,
              surveyId: surveyId,
              questionId: questionId,
              answer: answer,
            );
    ref.read(surveyProvider.notifier).update((state) => surveyData);
    ref.read(selectedProvider.notifier).update((state) => "");
    roundedLoadingController.reset();

    print("surveyData");
    print(surveyData);
    print("surveyData");

    if (surveyData['data']['completed'] == true) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const BottomBar(),
          ),
          (route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    var survey = ref.watch(surveyProvider);

    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        shadowColor: const Color(0xff4A4A4A),
        elevation: 0.2,
        centerTitle: true,
        leadingWidth: 48.sp,
        // title: Text(
        //   "Survey",
        //   style: GoogleFonts.poppins(
        //     fontSize: 20.sp,
        //     fontWeight: FontWeight.w400,
        //   ),
        // ),
      ),
      body: survey.isEmpty || survey['data']['completed'] == true
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Builder(builder: (context) {
              var data = survey['data'].containsKey('output')
                  ? survey['data']['output']
                  : survey['data']['nextQuestion'];
              return SingleChildScrollView(
                child: Column(
                  children: [
                    LinearProgressIndicator(
                      value: survey['data']['progress']['percentage'] / 100,
                      color: const Color(0xff171766),
                    ),
                    Container(
                      padding: EdgeInsets.all(20.sp),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['text'],
                            style: TextStyle(
                              fontFamily: FontConstants.SfProRegular,
                              color: Colors.black,
                              fontSize: 16.sp,
                            ),
                          ),
                          SizedBox(
                            height: 12.sp,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.sp),
                            child: Image.memory(
                              base64Decode(data['image']
                                  .toString()
                                  .removeBase64Prefix()),
                              width: double.infinity,
                              height: 209.sp,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 35.sp,
                          ),
                          data['type'] == "text"
                              ? TextField(
                                  onChanged: (value) {
                                    ref
                                        .read(selectedProvider.notifier)
                                        .update((state) => value);
                                  },
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff4A4A4A)
                                        .withOpacity(0.6),
                                  ),
                                  maxLines: null,
                                  keyboardType: TextInputType.multiline,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    contentPadding:
                                        EdgeInsets.only(left: 12.sp),
                                    hintText: "Enter your answer",
                                    hintStyle: GoogleFonts.poppins(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff4A4A4A)
                                          .withOpacity(0.6),
                                    ),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffB4B4B4),
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffB4B4B4),
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                )
                              : ListView.separated(
                                  itemCount: data['options'].length,
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    var option = data['options'][index];
                                    return Consumer(
                                        builder: (context, ref, child) {
                                      var selected =
                                          ref.watch(selectedProvider);
                                      return InkWell(
                                        onTap: () {
                                          ref
                                              .read(selectedProvider.notifier)
                                              .update((state) => option);

                                          // setState(() {});
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12.sp),
                                            border: Border.all(
                                              color: const Color(0xff4A4A4A)
                                                  .withOpacity(0.6),
                                            ),
                                          ),
                                          padding: EdgeInsets.only(
                                            top: 14.5.sp,
                                            bottom: 14.5.sp,
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                width: 20.sp,
                                              ),
                                              Container(
                                                height: 13.sp,
                                                width: 13.sp,
                                                padding: EdgeInsets.all(
                                                    selected == option
                                                        ? 2.5
                                                        : 2),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: selected == option
                                                      ? const Color(0xff7452FF)
                                                          .withOpacity(0.25)
                                                      : const Color(0xff4A4A4A)
                                                          .withOpacity(0.6),
                                                ),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: selected == option
                                                        ? const Color(
                                                            0xff7452FF)
                                                        : Colors.white,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10.sp,
                                              ),
                                              Text(
                                                option,
                                                style: const TextStyle(
                                                  color: Color(0xff4A4A4A),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    });
                                  },
                                  separatorBuilder: (context, index) =>
                                      SizedBox(
                                    height: 15.sp,
                                  ),
                                ),
                          SizedBox(
                            height: 30.sp,
                          ),
                          RoundedLoadingButton(
                              controller: roundedLoadingController,
                              onPressed: () {
                                roundedLoadingController.start();
                                var selected = ref.read(selectedProvider);
                                if (selected.isEmpty) {
                                  showSnackBar(
                                    context,
                                    data['type'] == "text"
                                        ? "Please enter your answer"
                                        : "Please select an option",
                                  );
                                  roundedLoadingController.reset();
                                  return;
                                } else {
                                  submitAnswer(
                                    answer: selected,
                                    surveyId: data['surveyId'],
                                    questionId: data['id'],
                                    context: context,
                                  );
                                }
                              },
                              color: Palette.border1,
                              height: 42.sp,
                              borderRadius: 10,
                              child: Center(
                                child: Text(
                                  survey['data']['progress']
                                              ['remainingQuestions'] >
                                          1
                                      ? "Next"
                                      : "Submit",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )),
                          SizedBox(
                            height: 27.sp,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
    );
  }
}

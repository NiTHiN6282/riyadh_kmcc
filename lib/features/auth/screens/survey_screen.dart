import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/font_constants.dart';
import '../../../theme/palette.dart';

class SurveyScreen extends StatefulWidget {
  const SurveyScreen({super.key});

  @override
  State<SurveyScreen> createState() => _SurveyScreenState();
}

class _SurveyScreenState extends State<SurveyScreen> {
  int? selected;
  @override
  Widget build(BuildContext context) {
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.sp),
          child: Column(
            children: [
              Text(
                "What skills or hobbies are you interested in developing further?",
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
                child: Image.asset(
                  "assets/survey.jpeg",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 35.sp,
              ),
              ListView.separated(
                itemCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      selected = index;
                      setState(() {});
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.sp),
                        border: Border.all(
                          color: const Color(0xff4A4A4A).withOpacity(0.6),
                        ),
                      ),
                      padding: EdgeInsets.only(
                        top: 14.5.sp,
                        bottom: 14.5.sp,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 20.sp,
                          ),
                          Container(
                            height: 13.sp,
                            width: 13.sp,
                            padding:
                                EdgeInsets.all(selected == index ? 2.5 : 2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: selected == index
                                  ? const Color(0xff7452FF).withOpacity(0.25)
                                  : const Color(0xff4A4A4A).withOpacity(0.6),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: selected == index
                                    ? const Color(0xff7452FF)
                                    : Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.sp,
                          ),
                          const Text(
                            "Web Development",
                            style: TextStyle(
                              color: Color(0xff4A4A4A),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                  height: 15.sp,
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Container(
                // width: 330.sp,
                height: 42.sp,
                decoration: BoxDecoration(
                  color: Palette.border1,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Submit",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 27.sp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

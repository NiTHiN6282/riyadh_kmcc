import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/font_constants.dart';
import '../../../theme/palette.dart';
import '../../home/screens/widgets/social_footer_widget.dart';

class TravelLog extends StatefulWidget {
  const TravelLog({super.key});

  @override
  State<TravelLog> createState() => TravelLogState();
}

class TravelLogState extends State<TravelLog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.grey,
        elevation: 0.7,
        centerTitle: true,
        title: Text(
          "Travel Log",
          style: GoogleFonts.poppins(
            fontSize: 20.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        leadingWidth: 48.sp,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SvgPicture.asset(
              "assets/icons/back.svg",
            ),
          ),
        ),
        actions: [
          Container(
            width: 38.sp,
            height: 38.sp,
            margin: EdgeInsets.only(right: 21.sp),
            decoration: BoxDecoration(
              color: const Color(0xffEDEDED),
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Icon(
              Icons.add,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.sp,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 29.sp,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 9.sp, top: 5.sp, bottom: 5.sp, right: 9.sp),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xff4A4A4A).withOpacity(0.3),
                      ),
                      borderRadius: BorderRadius.circular(12.sp),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Travel Status",
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 13.sp,
                          ),
                        ),
                        const Icon(Icons.keyboard_arrow_down_rounded)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5.sp,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 9.sp, top: 5.sp, bottom: 5.sp, right: 9.sp),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xff4A4A4A).withOpacity(0.3),
                      ),
                      borderRadius: BorderRadius.circular(12.sp),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Route",
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 13.sp,
                          ),
                        ),
                        const Icon(Icons.keyboard_arrow_down_rounded)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5.sp,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 9.sp, top: 5.sp, bottom: 5.sp, right: 9.sp),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xff4A4A4A).withOpacity(0.3),
                      ),
                      borderRadius: BorderRadius.circular(12.sp),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Date",
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 13.sp,
                          ),
                        ),
                        const Icon(Icons.keyboard_arrow_down_rounded)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5.sp,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 9.sp, top: 5.sp, bottom: 5.sp, right: 9.sp),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xff4A4A4A).withOpacity(0.3),
                      ),
                      borderRadius: BorderRadius.circular(12.sp),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Sort",
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 13.sp,
                          ),
                        ),
                        const Icon(Icons.keyboard_arrow_down_rounded)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
            ListView.separated(
              itemCount: 3,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => SizedBox(
                height: 10.sp,
              ),
              itemBuilder: (context, index) {
                return Container(
                  height: 138.sp,
                  padding: const EdgeInsets.all(20),
                  margin: EdgeInsets.only(left: 27.sp, right: 27.sp),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Palette.border1.withOpacity(0.2),
                    ),
                    color: Palette.containerBackground,
                    borderRadius: BorderRadius.circular(20.85.sp),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 180.sp,
                            child: Text(
                              "Xavi hernandez",
                              style: TextStyle(
                                fontFamily: FontConstants.SfProMedium,
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 18.sp,
                              ),
                            ),
                          ),
                          Text(
                            "16 JAN 2025",
                            style: TextStyle(
                              fontFamily: FontConstants.SfProMedium,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "BAH",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: FontConstants.SfProBold,
                                  fontSize: 14.sp,
                                ),
                              ),
                              SizedBox(
                                width: 135.sp,
                                child: Text(
                                  "Bahrain International",
                                  style: TextStyle(
                                    color: Palette.heading2,
                                    overflow: TextOverflow.ellipsis,
                                    fontFamily: FontConstants.SfProRegular,
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ),
                              Text(
                                "23:45, Thu 15 Oct",
                                style: TextStyle(
                                  color: Palette.heading2,
                                  fontFamily: FontConstants.SfProRegular,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "CCJ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: FontConstants.SfProBold,
                                  fontSize: 14.sp,
                                ),
                              ),
                              SizedBox(
                                width: 135.sp,
                                child: Text(
                                  "Calicut International",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Palette.heading2,
                                    overflow: TextOverflow.ellipsis,
                                    fontFamily: FontConstants.SfProRegular,
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ),
                              Text(
                                "4:30, Fri 16 Oct",
                                style: TextStyle(
                                  color: Palette.heading2,
                                  fontFamily: FontConstants.SfProRegular,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
            SizedBox(
              height: 44.sp,
            ),
            Divider(
              thickness: 1.sp,
              color: const Color(0xffF0F0F0),
            ),
            SizedBox(
              height: 20.sp,
            ),
            const SocialFooterWidget(),
          ],
        ),
      ),
    );
  }
}

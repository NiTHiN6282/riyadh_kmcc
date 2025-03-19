import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/font_constants.dart';
import '../../../../theme/palette.dart';

class JoinGoldCoinProgramWidget extends StatelessWidget {
  const JoinGoldCoinProgramWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420.sp,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color(0xffffda14).withOpacity(0.2),
            const Color(0xffFFF7BD),
          ],
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 40.sp,
          ),
          Text(
            "Join the Gold Coin Program!",
            style: TextStyle(
              color: Palette.heading2,
              fontFamily: FontConstants.SfProBold,
              fontSize: 22.sp,
            ),
          ),
          SizedBox(
            height: 5.sp,
          ),
          SizedBox(
            width: 360.sp,
            child: Text(
              "Contribute monthly and stand a chance to win exciting rewards!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Palette.subtitle2.withOpacity(0.7),
                fontFamily: FontConstants.SfProRegular,
                fontSize: 16.sp,
              ),
            ),
          ),
          SizedBox(
            height: 30.sp,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Next Draw on ",
                style: TextStyle(
                  color: Palette.subtitle4.withOpacity(0.7),
                  fontSize: 13.sp,
                  fontFamily: FontConstants.SfProRegular,
                ),
              ),
              Text(
                "February 15, 2025",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.sp,
                  fontFamily: FontConstants.SfProBold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 13.sp,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 70.sp,
                height: 53.sp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffFDC830),
                      Color(0xffF37335),
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      "25",
                      style: GoogleFonts.poppins(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Days",
                      style: GoogleFonts.poppins(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 13.sp,
              ),
              Container(
                width: 70.sp,
                height: 53.sp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffFDC830),
                      Color(0xffF37335),
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      "15",
                      style: GoogleFonts.poppins(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Hours",
                      style: GoogleFonts.poppins(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 13.sp,
              ),
              Container(
                width: 70.sp,
                height: 53.sp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffFDC830),
                      Color(0xffF37335),
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      "32",
                      style: GoogleFonts.poppins(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Mins",
                      style: GoogleFonts.poppins(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 13.sp,
              ),
              Container(
                width: 70.sp,
                height: 53.sp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffFDC830),
                      Color(0xffF37335),
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      "23",
                      style: GoogleFonts.poppins(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Seconds",
                      style: GoogleFonts.poppins(
                        fontSize: 13.sp,
                        color: Colors.white70,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30.sp,
          ),
          Container(
            width: double.infinity,
            height: 59.sp,
            margin: EdgeInsets.only(left: 30.sp, right: 30.sp),
            decoration: BoxDecoration(
              border: Border.all(
                color: Palette.border1.withOpacity(0.2),
              ),
              borderRadius: BorderRadius.circular(10.sp),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0xffFFC837).withOpacity(0.2),
                  const Color(0xffFF8008).withOpacity(0.2),
                ],
              ),
            ),
            child: Center(
              child: Text(
                "You're in for the Next Draw! 🎉",
                style: TextStyle(
                  color: Palette.btnText,
                  fontFamily: FontConstants.SfProMedium,
                  fontSize: 18.sp,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15.sp,
          ),
          Container(
            width: double.infinity,
            height: 59.sp,
            margin: EdgeInsets.only(left: 30.sp, right: 30.sp),
            decoration: BoxDecoration(
              border: Border.all(
                color: Palette.border1.withOpacity(0.2),
              ),
              borderRadius: BorderRadius.circular(10.sp),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0xffFFC837).withOpacity(0.2),
                  const Color(0xffFF8008).withOpacity(0.2),
                ],
              ),
            ),
            child: Center(
              child: Text(
                "View Full Details",
                style: TextStyle(
                  color: Palette.btnText,
                  fontFamily: FontConstants.SfProMedium,
                  fontSize: 18.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

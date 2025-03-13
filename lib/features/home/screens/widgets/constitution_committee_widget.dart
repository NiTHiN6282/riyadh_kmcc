import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/constants/font_constants.dart';

class ConstitutionCommitteeWidget extends StatelessWidget {
  const ConstitutionCommitteeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Constitution Committee",
            style: GoogleFonts.poppins(
              fontSize: 22.sp,
              fontWeight: FontWeight.w600,
              color: const Color(0xff120D26),
            ),
          ),
          SizedBox(
            height: 5.sp,
          ),
          Text(
            "Welcome to the Constitution section of the KMCC",
            style: TextStyle(
                fontSize: 16.sp,
                color: const Color(0xffA0A0A0),
                fontFamily: FontConstants.SfProRegular),
          ),
          SizedBox(
            height: 24.sp,
          ),
          GridView.builder(
            itemCount: 10,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12.sp,
              mainAxisSpacing: 12.sp,
              childAspectRatio: 1.18.sp,
            ),
            itemBuilder: (context, index) {
              return Container(
                width: 175.sp,
                height: 134.sp,
                padding: EdgeInsets.all(8.sp),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.sp),
                  border: Border.all(
                    color: const Color(0xff7452ff).withOpacity(0.2),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      width: 40.sp,
                      height: 40.sp,
                      padding: EdgeInsets.all(8.sp),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.sp),
                        color: const Color(0xff7452FF),
                      ),
                      child: SvgPicture.asset(
                        Constants.locationTrans,
                      ),
                    ),
                    SizedBox(
                      height: 16.sp,
                    ),
                    Text(
                      "Balussery",
                      style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff120D26),
                      ),
                    ),
                    SizedBox(
                      height: 8.sp,
                    ),
                    Container(
                      height: 30.sp,
                      width: 159.sp,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xff7452FF),
                        ),
                        borderRadius: BorderRadius.circular(6.sp),
                        color: const Color(0xff7452FF).withOpacity(0.06),
                      ),
                      child: Center(
                        child: Text(
                          "Details",
                          style: TextStyle(
                            color: const Color(0xff7452FF),
                            fontFamily: FontConstants.SfProRegular,
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

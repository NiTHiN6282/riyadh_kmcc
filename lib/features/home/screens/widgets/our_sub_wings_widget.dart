import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/font_constants.dart';
import '../../../subwing/screens/subwing_details.dart';

class OurSubWingsWidget extends StatelessWidget {
  const OurSubWingsWidget({
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
            "Our Sub Wings",
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
            "Welcome to the Sub-Wings section of the KMCC",
            style: TextStyle(
              fontSize: 16.sp,
              fontFamily: FontConstants.SfProRegular,
              color: const Color(0xffA0A0A0),
            ),
          ),
          SizedBox(
            height: 24.sp,
          ),
          ListView.separated(
            itemCount: 5,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => SizedBox(
              height: 12.sp,
            ),
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(8.sp),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xff7452ff).withOpacity(0.2),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Container(
                        width: 40.sp,
                        height: 40.sp,
                        padding: EdgeInsets.all(8.sp),
                        decoration: BoxDecoration(
                            color: const Color(0xff7452FF),
                            borderRadius: BorderRadius.circular(10)),
                        child: SvgPicture.asset(
                          "assets/icons/PaintBrush.svg",
                          width: 24.sp,
                          height: 24.sp,
                        )),
                    SizedBox(width: 12.sp),
                    SizedBox(
                      width: 180.sp,
                      child: Text(
                        "Arts & Cultural Wing",
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          color: const Color(0xff120D26),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SubWingsDetails(),
                          ),
                        );
                      },
                      child: Container(
                          width: 55.sp,
                          height: 22.sp,
                          decoration: BoxDecoration(
                              color: const Color(0xff7452ff).withOpacity(0.06),
                              borderRadius: BorderRadius.circular(6.sp),
                              border: Border.all(
                                  width: 0.5.sp,
                                  color: const Color(0xff7452FF))),
                          child: Center(
                            child: Text(
                              "Details",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: FontConstants.SfProRegular,
                                color: const Color(0xff7452FF),
                              ),
                            ),
                          )),
                    ),
                    SizedBox(
                      width: 8.sp,
                    ),
                    SvgPicture.asset(
                      "assets/icons/see_all_icon.svg",
                      color: const Color(0xff7452FF),
                    )
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

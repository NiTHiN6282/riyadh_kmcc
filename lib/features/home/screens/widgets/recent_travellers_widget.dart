import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/constants/font_constants.dart';
import '../../../../theme/palette.dart';
import '../../../travel/screens/travel_log.dart';

class RecentTravellersWidget extends StatelessWidget {
  const RecentTravellersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 22.sp,
            right: 13.57.sp,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recent travellers",
                style: GoogleFonts.poppins(
                  color: Palette.heading1,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TravelLog(),
                      ));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: FontConstants.SfProRegular,
                        fontWeight: FontWeight.w400,
                        color: Palette.seeAllColor,
                      ),
                    ),
                    SizedBox(
                      width: 5.sp,
                    ),
                    SvgPicture.asset(
                      Constants.seeAll,
                      width: 6.43.sp,
                      height: 9.sp,
                    )
                  ],
                ),
              )
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
      ],
    );
  }
}

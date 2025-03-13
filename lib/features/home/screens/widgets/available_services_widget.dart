import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/constants/font_constants.dart';
import '../../../../theme/palette.dart';

class AvailableServicesWidget extends StatelessWidget {
  const AvailableServicesWidget({
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
                "Available Services",
                style: GoogleFonts.poppins(
                  color: Palette.heading1,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
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
              )
            ],
          ),
        ),
        SizedBox(
          height: 17.sp,
        ),
        ListView.separated(
          itemCount: 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) => SizedBox(
            height: 10.sp,
          ),
          itemBuilder: (context, index) {
            return Container(
              height: 226.sp,
              margin: EdgeInsets.only(left: 12.sp, right: 12.sp),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Palette.border1.withOpacity(0.2),
                ),
                color: Palette.containerBackground,
                borderRadius: BorderRadius.circular(20.85.sp),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 18.5.sp,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 18.5.sp,
                      ),
                      Image.asset(
                        Constants.availServices,
                        width: 118.sp,
                        height: 137.sp,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 10.sp,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 190.sp,
                            child: Text(
                              "Enovo Plumbing Services",
                              maxLines: 2,
                              style: TextStyle(
                                color: Colors.black,
                                overflow: TextOverflow.ellipsis,
                                fontSize: 16.sp,
                                fontFamily: FontConstants.SfProMedium,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.sp,
                          ),
                          SizedBox(
                            width: 190.sp,
                            child: Text(
                              "123 Main Street, Kozhikode, Kerala",
                              maxLines: 2,
                              style: TextStyle(
                                color: Palette.subtitle2.withOpacity(0.6),
                                overflow: TextOverflow.ellipsis,
                                fontSize: 11.sp,
                                fontFamily: FontConstants.SfProRegular,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.sp,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                Constants.blueLocation,
                              ),
                              SizedBox(
                                width: 8.sp,
                              ),
                              Text(
                                "Monday - Friday",
                                style: TextStyle(
                                  color: Palette.subtitle2,
                                  fontSize: 13.sp,
                                  fontFamily: FontConstants.SfProRegular,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4.sp,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                Constants.timeIcon,
                              ),
                              SizedBox(
                                width: 8.sp,
                              ),
                              Text(
                                "8:00 AM - 8:00 PM",
                                style: TextStyle(
                                  color: Palette.subtitle2,
                                  fontSize: 13.sp,
                                  fontFamily: FontConstants.SfProRegular,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.sp,
                  ),
                  Container(
                    // width: 330.sp,
                    height: 42.sp,
                    margin: EdgeInsets.only(
                      left: 20.sp,
                      right: 20.sp,
                    ),
                    decoration: BoxDecoration(
                      color: Palette.border1,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Book Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontFamily: FontConstants.SfProBold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        SizedBox(
          height: 20.5.sp,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "View All",
            style: TextStyle(
              color: Palette.viewAll,
              fontFamily: FontConstants.SfProMedium,
              fontSize: 18.sp,
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/constants/font_constants.dart';
import '../../../../theme/palette.dart';

class UpcomingEventWidget extends StatelessWidget {
  const UpcomingEventWidget({
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
                "Upcoming Events",
                style: GoogleFonts.poppins(
                  fontSize: 22.sp,
                  color: Palette.heading1,
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
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.sp,
        ),
        Container(
          padding: EdgeInsets.only(
            left: 22.sp,
          ),
          height: 255.sp,
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(
              width: 10.sp,
            ),
            itemCount: 5,
            // shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                height: 255.sp,
                width: 237.sp,
                padding: EdgeInsets.all(9.sp),
                margin: (index + 1) == 5 ? EdgeInsets.only(right: 22.sp) : null,
                decoration: BoxDecoration(
                  border: Border.all(color: Palette.border2),
                  borderRadius: BorderRadius.circular(18.sp),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 131.sp,
                          width: 218.sp,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(Constants.event),
                            ),
                          ),
                        ),
                        Positioned(
                          child: Container(
                            width: 50.sp,
                            height: 50.sp,
                            padding: EdgeInsets.all(5.sp),
                            margin: EdgeInsets.all(8.sp),
                            decoration: BoxDecoration(
                                color: const Color(0xffFFFFFF).withOpacity(0.7),
                                borderRadius: BorderRadius.circular(10.sp)),
                            child: Column(
                              children: [
                                Text(
                                  "10",
                                  style: TextStyle(
                                    fontFamily: FontConstants.SfProMedium,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.sp,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "MAR",
                                  style: TextStyle(
                                    fontFamily: FontConstants.SfProMedium,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 14.sp,
                    ),
                    Text(
                      "Annual KMCC Meeting",
                      style: TextStyle(
                        fontFamily: FontConstants.SfProMedium,
                        overflow: TextOverflow.ellipsis,
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 12.sp,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 56.sp,
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                left: 2 * 15.sp,
                                child: CircleAvatar(
                                  radius: 13.sp,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 12.sp,
                                    backgroundImage: const AssetImage(
                                      Constants.person,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 15.sp,
                                child: CircleAvatar(
                                  radius: 13.sp,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 12.sp,
                                    backgroundImage: const AssetImage(
                                      Constants.person,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                child: CircleAvatar(
                                  radius: 13.sp,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 12.sp,
                                    backgroundImage: const AssetImage(
                                      Constants.person,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10.sp,
                        ),
                        Text(
                          "+20 Attends this event",
                          style: TextStyle(
                            fontFamily: FontConstants.SfProMedium,
                            fontWeight: FontWeight.w500,
                            // height: 1,
                            fontSize: 12.sp,
                            color: Palette.subtitle6,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          Constants.location,
                          height: 14.67.sp,
                          // color: const Color(0xff716E90),
                        ),
                        SizedBox(
                          width: 5.sp,
                        ),
                        SizedBox(
                          width: 190.sp,
                          child: const Text(
                            "Manama, Bahrain",
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              color: Palette.subtitle5,
                              fontFamily: FontConstants.SfProRegular,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/constants.dart';
import '../../../core/constants/font_constants.dart';
import '../../../theme/palette.dart';
import '../../home/screens/widgets/social_footer_widget.dart';

class ServiceList extends StatefulWidget {
  const ServiceList({super.key});

  @override
  State<ServiceList> createState() => ServiceListState();
}

class ServiceListState extends State<ServiceList> {
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
          "Services",
          style: GoogleFonts.poppins(
            fontSize: 20.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          Container(
            width: 24.sp,
            height: 24.sp,
            margin: EdgeInsets.only(right: 25.sp),
            child: SvgPicture.asset("assets/icons/search.svg"),
          ),
        ],
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
                          "Location",
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
                          "Availability",
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
                          "Category",
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
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.sp),
                            child: Image.asset(
                              Constants.availServices,
                              width: 118.sp,
                              height: 137.sp,
                              fit: BoxFit.cover,
                            ),
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/constants.dart';
import '../../../core/constants/font_constants.dart';
import '../../../theme/palette.dart';
import '../../home/screens/widgets/social_footer_widget.dart';

class CareerOpportunitiesList extends StatefulWidget {
  const CareerOpportunitiesList({super.key});

  @override
  State<CareerOpportunitiesList> createState() =>
      CareerOpportunitiesListState();
}

class CareerOpportunitiesListState extends State<CareerOpportunitiesList> {
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
          "Career Opportunities",
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
                          "Job Type",
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
                          "Industry",
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
              itemCount: 4,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => SizedBox(
                height: 10.sp,
              ),
              itemBuilder: (context, index) {
                return Container(
                  height: 170.sp,
                  padding:
                      EdgeInsets.only(left: 20.sp, top: 15.sp, bottom: 15.sp),
                  margin: EdgeInsets.only(left: 27.sp, right: 27.sp),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Palette.border1.withOpacity(0.2),
                    ),
                    color: Palette.containerBackground,
                    borderRadius: BorderRadius.circular(20.85.sp),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        Constants.companyLogo,
                        width: 70.sp,
                        height: 38.5.sp,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      Text(
                        "BAPCO Bahrain",
                        style: TextStyle(
                          color: Palette.subtitle3,
                          overflow: TextOverflow.ellipsis,
                          fontSize: 12.sp,
                          fontFamily: FontConstants.SfProMedium,
                        ),
                      ),
                      SizedBox(
                        height: 17.sp,
                      ),
                      Text(
                        "Front-end Developer / Full time",
                        style: TextStyle(
                          color: Palette.heading3,
                          overflow: TextOverflow.ellipsis,
                          fontSize: 18.sp,
                          fontFamily: FontConstants.SfProMedium,
                        ),
                      ),
                      SizedBox(
                        height: 16.sp,
                      ),
                      Row(
                        children: [
                          Text(
                            "BHD 2500/ M",
                            style: TextStyle(
                              color: Palette.heading3,
                              overflow: TextOverflow.ellipsis,
                              fontSize: 14.sp,
                              fontFamily: FontConstants.SfProRegular,
                            ),
                          ),
                          SizedBox(
                            width: 11.sp,
                          ),
                          Text(
                            "Hamad Town, Bahrain",
                            style: TextStyle(
                              color: Palette.subtitle3,
                              overflow: TextOverflow.ellipsis,
                              fontSize: 12.sp,
                              fontFamily: FontConstants.SfProRegular,
                            ),
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

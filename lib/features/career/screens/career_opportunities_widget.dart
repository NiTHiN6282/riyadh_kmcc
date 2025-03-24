import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riyadh_kmcc_new/features/career/screens/career_opportunities_list.dart';

import '../../../core/constants/constants.dart';
import '../../../core/constants/font_constants.dart';
import '../../../theme/palette.dart';

class CareerOpportunitiesWidget extends StatelessWidget {
  const CareerOpportunitiesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: AlignmentDirectional.topStart,
          child: Padding(
            padding: EdgeInsets.only(left: 22.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Career Opportunities",
                  style: GoogleFonts.poppins(
                    color: Palette.heading1,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 5.sp,
                ),
                Text(
                  "Explore open positions and apply today",
                  style: TextStyle(
                    color: Palette.subtitle1,
                    fontSize: 16.sp,
                    fontFamily: FontConstants.SfProRegular,
                  ),
                )
              ],
            ),
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
              padding: EdgeInsets.only(left: 20.sp, top: 15.sp, bottom: 15.sp),
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
          height: 20.5.sp,
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CareerOpportunitiesList(),
              ),
            );
          },
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

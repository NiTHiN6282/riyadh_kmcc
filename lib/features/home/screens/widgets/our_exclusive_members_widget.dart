import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/font_constants.dart';

class OurExclusiveMembersWidget extends StatelessWidget {
  const OurExclusiveMembersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Text(
          "Our exclusive members",
          style: GoogleFonts.poppins(
            color: const Color(0xff000000),
            fontSize: 22.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 5.sp,
        ),
        SizedBox(
          width: 305.sp,
          child: Text(
            "Meet the passionate individuals driving our mission forward.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xff4a4a4a).withOpacity(0.7),
              fontSize: 16.sp,
              fontFamily: FontConstants.SfProRegular,
            ),
          ),
        ),
        SizedBox(
          height: 25.79.sp,
        ),
        Container(
          height: 231.43.sp,
          margin: EdgeInsets.only(left: 22.51.sp),
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              width: 12.46,
            ),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) => Container(
              width: 163.04.sp,
              margin:
                  (index + 1) == 3 ? EdgeInsets.only(right: 22.51.sp) : null,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.sp),
                color: Colors.transparent,
              ),
              child: Container(
                height: 231.43.sp,
                width: 163.04.sp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.sp),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: CachedNetworkImageProvider(
                      "https://s3-alpha-sig.figma.com/img/4e4f/56fa/5e65d3cde005c8fd2c8c5bda20d639d5?Expires=1742774400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=SOgm7Rue7xcMePsgxF8TRD00Kohifm7Y1~TEBFI4HLKMzSk4np4qKwo8i90qzUDb3dRJ4BhtIcyRAc92AHvXkKEEUREej07J3Dwl4yQ1-gtDcvpEC6WOxick7qPhYKvn7nvU6BQci-ipGQSJkLvj0iWqFVM9to2ubbnfd0SaNeXxj2V4RuVhG~L238KK4G5IuusKo-6i3ZFvKbZFnYpFEksNCOO80oogN~9kitbhZT8WH3tmYx83-f9xmFQbT4wHVA-EAHUmys3q8eQCn-1jc~hAyaaIxP7d8~35XopQey2SKIrruxxoxk~S5OZWI80O~cYJuuNnDi2ugPIP~0BElQ__",
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.sp),
                        gradient: LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.7),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 18.83.sp, bottom: 16.02.sp),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dilshad Kallai",
                            style: TextStyle(
                              fontFamily: FontConstants.SfProMedium,
                              fontSize: 17.sp,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Vice President",
                            style: TextStyle(
                                fontFamily: FontConstants.SfProRegular,
                                fontSize: 12.sp,
                                color: const Color(0xffD4D4D8)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

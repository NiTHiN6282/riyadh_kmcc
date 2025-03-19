import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/font_constants.dart';
import '../../../../theme/palette.dart';

class LatestFromKmccWidget extends StatelessWidget {
  const LatestFromKmccWidget({
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
                  "Latest from KMCC",
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
                  "Stay informed with the latest KMCC updates.",
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
          height: 30.sp,
        ),
        Container(
          height: 180.sp,
          margin: EdgeInsets.only(
            left: 22.sp,
            right: 22.sp,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.sp),
            image: const DecorationImage(
              image: CachedNetworkImageProvider(
                "https://s3-alpha-sig.figma.com/img/cb05/e0fd/e7810544f16a6f6235f2f0c932d2e7cd?Expires=1742774400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=ivPzwH-8-K6lQinHRyR~4KznBmJ7uE4tDrqWqlx~REngiszYe1GomuuiFFPvFODfLfavCQu9E4Kj~6f3rZCDRV1aPZ2vDRRr40O970lNT-bMMQK2VPVu01QGLDXuoybJ8TgXn-SKL-DNJdxpYHaqUxIOMIBdMR9vPLm7J4U~LrV7GVR5uVhoGpc4TF6~v-ahg-TBcZhHrw47PX4kLA5w-FUE1JSJ8rXNy2W1xCEolYsCzLe18jR0kECCXRxmw7WS0bGYNgJCMxO0Wzt2330kRV5BofV1pxs2Q07hzimDU6eWjIewOJ1jBQE8c1NT9iePblDtIPhY1-A0rZ9Op23brw__",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 134.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.sp),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        const Color(0xff111111).withOpacity(0.05),
                        const Color(0xff080808).withOpacity(0.4),
                        const Color(0xff0E0E0E).withOpacity(0.85),
                        const Color(0xff000000),
                        // const Color(0xff111111),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 12.sp),
                    width: 32.sp,
                    height: 12.sp,
                    decoration: BoxDecoration(
                      color: const Color(0xff252525).withOpacity(0.55),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return CircleAvatar(
                            radius: 3,
                            backgroundColor: index == 1
                                ? const Color(0xffFFFFFF)
                                : const Color(0xffFFFFFF).withOpacity(0.3),
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(
                          width: 4.sp,
                        ),
                        itemCount: 3,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Jul 10, 2023",
                        maxLines: 3,
                        style: GoogleFonts.inter(
                          fontSize: 10.sp,
                          color: const Color.fromARGB(255, 219, 219, 219),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 6.sp,
                      ),
                      SizedBox(
                        width: 295.sp,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 245.sp,
                              child: Text(
                                "KMCC Hosts Annual Charity Event 2025",
                                maxLines: 2,
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  overflow: TextOverflow.ellipsis,
                                  fontFamily: FontConstants.SfProMedium,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.arrow_outward,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16.sp,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30.sp,
        ),
        Container(
          height: 240.sp,
          margin: EdgeInsets.only(left: 22.sp),
          child: ListView.separated(
            itemCount: 5,
            shrinkWrap: true,
            separatorBuilder: (context, index) => const SizedBox(
              width: 8,
            ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                // height: 230.sp,
                width: 166.sp,
                padding: EdgeInsets.only(
                    left: 10.sp, top: 10.sp, right: 10.sp, bottom: 10.sp),
                margin: (index + 1) == 5 ? EdgeInsets.only(right: 22.sp) : null,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.sp),
                  border: Border.all(color: const Color(0xffF2F2F2)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4.sp),
                      child: CachedNetworkImage(
                        imageUrl:
                            "https://s3-alpha-sig.figma.com/img/768c/79b0/c0fbf01b015302635613c6e35f8df635?Expires=1742774400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=h0jOFKBO01jw2JtIJIiy5K9C0P0fle-Gi2QBoh~b~V2xzpzUaioo19DtJ26BOrAoPvyR~J-Lv88u9xkH8PMV3yJYM9PjN0LFeQDLYIcYEKLXYwpDRPMVwmzNKxg9F9tZaCNwUXoOuSPFSHQRO5F8UhmnjWfHVzT6rKFnIqnUuS~f6Ujinotgg2rPQcMiWo7BUEYzH1p1tyDFIFaVSNE9JDjKS0PHRGbz9Ux9zZ26tSitFpF0ixSmlK768MgDvriixGPr-V1ufJP8wpa533AKSboNOkswD0it-JejABf5aAU7HDQGLUeTFjBUL7xZVzSG8uqPd9UwTsdxqyE6g5y9ag__",
                        width: 146.sp,
                        height: 104.sp,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    Text(
                      "5 min read",
                      style: GoogleFonts.inter(
                        color: const Color(0xff888888),
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                      ),
                    ),
                    SizedBox(
                      height: 4.sp,
                    ),
                    Text(
                      "Blood Donation Drive Conducted in Dubai, UAE",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: const Color(0xff000000),
                        fontFamily: FontConstants.SfProRegular,
                        fontSize: 15.sp,
                      ),
                    ),
                    SizedBox(
                      height: 8.sp,
                    ),
                    Text(
                      "Jul 14, 2023",
                      style: GoogleFonts.inter(
                        color: const Color(0xff888888),
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 38.5.sp,
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

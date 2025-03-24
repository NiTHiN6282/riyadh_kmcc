import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/font_constants.dart';
import '../../../../theme/palette.dart';
import '../../../news/screens/news_details.dart';
import '../bottom_bar.dart';

class LatestFromKmccWidget extends ConsumerStatefulWidget {
  const LatestFromKmccWidget({
    super.key,
  });

  @override
  ConsumerState<LatestFromKmccWidget> createState() =>
      _LatestFromKmccWidgetState();
}

class _LatestFromKmccWidgetState extends ConsumerState<LatestFromKmccWidget> {
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
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NewsDetails(),
                ));
          },
          child: Container(
            height: 180.sp,
            margin: EdgeInsets.only(
              left: 22.sp,
              right: 22.sp,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.sp),
              image: const DecorationImage(
                image: AssetImage(
                  "assets/latest_kmcc.jpeg",
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
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NewsDetails(),
                      ));
                },
                child: Container(
                  // height: 230.sp,
                  width: 166.sp,
                  padding: EdgeInsets.only(
                      left: 10.sp, top: 10.sp, right: 10.sp, bottom: 10.sp),
                  margin:
                      (index + 1) == 5 ? EdgeInsets.only(right: 22.sp) : null,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.sp),
                    border: Border.all(color: const Color(0xffF2F2F2)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4.sp),
                        child: Image.asset(
                          "assets/kmcc_news.png",
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
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 38.5.sp,
        ),
        TextButton(
          onPressed: () {
            ref.read(selectedIndexProvider.notifier).update((state) => 2);
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

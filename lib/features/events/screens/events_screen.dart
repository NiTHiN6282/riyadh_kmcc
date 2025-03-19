import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riyadh_kmcc_new/features/home/screens/widgets/social_footer_widget.dart';

import '../../../core/constants/constants.dart';
import '../../../core/constants/font_constants.dart';
import '../../../theme/palette.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  void initState() {
    super.initState();
  }

  int selectedIndex = 0;

  List eventCategories = [
    "All",
    "Conferences",
    "Cultural Events",
    "Workshops",
  ];

  String selectedCategory = "All";

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.sp,
            ),
            Container(
              height: 472.sp,
              width: 362.sp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.sp),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: CachedNetworkImageProvider(
                    "https://s3-alpha-sig.figma.com/img/bc5f/6ec9/ccf1c6d9e8f3f8e5936f15e1831684bc?Expires=1742774400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=IFJd20oSJmbsARgPLAcg5SdCBOf2gYOcoqm4FPsihggOGsw6Pq48PJG7v2HYs0~INr6ScZY8BwR7CJZYZ2Nr~td48ORLz-6sV0MQ5CNQYVVS6mKBw2qlYDcuDux1fAkztyQydhBJCHB2u2Hi4Wz0yuNZlhQZNNF-1l3tyVJDfGZFQ4fnc48Oq2hYT32DDpACNf8e72FqUrdeLbSbKgKxriqoJx7oayePjwaFp6Ut81xhOfZzdqOJu8qU3D0NT3beGZvtSmGLj~0eEM4HswRwo8GYyVptMCTGD5CW4YD1AWyG5NxROMRsBLaYEHc5sNKkWNgqbh8ZUWavWJ7A-~4ayA__",
                  ),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 170.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.sp),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            // Colors.transparent,
                            const Color(0xff111111).withOpacity(0.05),
                            const Color(0xff080808).withOpacity(0.4),
                            const Color(0xff0E0E0E).withOpacity(0.5),
                            // const Color(0xff000000),
                            // const Color(0xff111111),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.sp),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "KMCC Sports Day 2025",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: 20.sp,
                          ),
                        ),
                        SizedBox(
                          height: 14.sp,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/icons/calender_icon.svg",
                              width: 15.sp,
                            ),
                            SizedBox(
                              width: 8.sp,
                            ),
                            Text(
                              "March 15-17, 2025",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.sp,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              Constants.locationTrans,
                              width: 15.sp,
                            ),
                            SizedBox(
                              width: 8.sp,
                            ),
                            SizedBox(
                              width: 270.sp,
                              child: Text(
                                "King Fahd Stadium , Riyadh, Saudi Arabia lksdn ksjd klsdjl ",
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.48.sp,
                        ),
                        Container(
                          width: 149.sp,
                          height: 39.sp,
                          decoration: BoxDecoration(
                            color: const Color(0xff171766),
                            borderRadius: BorderRadius.circular(10.sp),
                          ),
                          child: Center(
                            child: Text(
                              "Register Now",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 21.sp,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 28.sp,
            ),
            Container(
              height: 42.sp,
              padding: EdgeInsets.only(left: 20.sp),
              child: ListView.separated(
                itemCount: eventCategories.length,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(
                  width: 12.sp,
                ),
                itemBuilder: (context, index) {
                  var category = eventCategories[index];
                  return InkWell(
                    onTap: () {
                      selectedCategory = category;
                      setState(() {});
                    },
                    child: Container(
                      width: 123.sp,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffE5E7EB),
                          ),
                          borderRadius: BorderRadius.circular(20),
                          color: selectedCategory == category
                              ? const Color(0xff7452FF)
                              : Colors.white),
                      child: Center(
                        child: Text(
                          eventCategories[index],
                          style: GoogleFonts.poppins(
                            color: selectedCategory == category
                                ? Colors.white
                                : const Color(0xff4B5563),
                            fontSize: 13.sp,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 27.sp,
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
                        height: 10.sp,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10.sp,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.sp),
                            child: Image.asset(
                              Constants.availServices,
                              width: 127.sp,
                              height: 132.sp,
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
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/calender_icon.svg",
                                    width: 14.sp,
                                    height: 14.sp,
                                    colorFilter: const ColorFilter.mode(
                                      Color(0xff4B5563),
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8.sp,
                                  ),
                                  Text(
                                    "February 15, 2025",
                                    style: TextStyle(
                                      color: Palette.subtitle2.withOpacity(0.6),
                                      fontSize: 14.sp,
                                      fontFamily: FontConstants.SfProRegular,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 11.sp,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    Constants.timeIcon,
                                    width: 14.sp,
                                    height: 14.sp,
                                    colorFilter: const ColorFilter.mode(
                                      Color(0xff4B5563),
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8.sp,
                                  ),
                                  Text(
                                    "8:00 AM - 8:00 PM",
                                    style: TextStyle(
                                      color: Palette.subtitle2.withOpacity(0.6),
                                      fontSize: 14.sp,
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
                    ],
                  ),
                );
              },
            ),
            SizedBox(
              height: 46.sp,
            ),
            const Divider(),
            SizedBox(
              height: 20.sp,
            ),
            const SocialFooterWidget(),
            SizedBox(
              height: 30.sp,
            ),
          ],
        ),
      ),
    );
  }
}

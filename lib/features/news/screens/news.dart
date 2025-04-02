import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riyadh_kmcc_new/core/constants/font_constants.dart';

import 'news_details.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  CarouselSliderController controller = CarouselSliderController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.grey,
        elevation: 0.7,
        leadingWidth: 100,
        title: Text(
          "KMCC News",
          style: GoogleFonts.poppins(
            fontSize: 20.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 29.sp,
            ),
            Stack(
              children: [
                CarouselSlider.builder(
                  carouselController: controller,
                  itemCount: 7,
                  itemBuilder: (context, index, realIndex) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NewsDetails(),
                            ));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.sp),
                        child: Container(
                          width: 323.sp,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.sp),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/news_banner.jpeg"),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  height: 100.sp,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18.sp),
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        // Colors.transparent,
                                        const Color(0xff111111)
                                            .withOpacity(0.05),
                                        const Color(0xff080808)
                                            .withOpacity(0.4),
                                        const Color(0xff0E0E0E)
                                            .withOpacity(0.5),
                                        // const Color(0xff000000),
                                        // const Color(0xff111111),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 101.94.sp,
                                    height: 26.16.sp,
                                    margin: EdgeInsets.only(
                                        left: 11.8.sp, top: 14.27.sp),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(12.sp),
                                      color: const Color(0xff7452FF),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Community News",
                                        style: TextStyle(
                                          fontFamily:
                                              FontConstants.SfProRegular,
                                          fontSize: 10.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 21.46.sp),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "6 hours ago",
                                          style: TextStyle(
                                            fontFamily:
                                                FontConstants.SfProRegular,
                                            fontSize: 13.sp,
                                            color: const Color(0xffFFFFFF)
                                                .withOpacity(0.7),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 250.sp,
                                          child: Text(
                                            "KMCC Hosts Annual Gala for Over 500 Members",
                                            maxLines: 2,
                                            style: TextStyle(
                                              fontFamily:
                                                  FontConstants.SfProRegular,
                                              overflow: TextOverflow.ellipsis,
                                              fontSize: 14.sp,
                                              color: const Color(0xffFFFFFF),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 25.sp,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  options: CarouselOptions(
                    viewportFraction: 0.76.sp,
                    onPageChanged: (index, reason) {
                      currentIndex = index;
                      setState(() {});
                    },
                    enlargeCenterPage: true,
                    height: 239.sp,
                  ),
                ),
                Positioned(
                  bottom: 15,
                  right: 0,
                  left: 0,
                  child: Center(
                    child: ExpandingDotIndicator(
                      activeIndex: currentIndex,
                      count: 7,
                      dotHeight: 6,
                      dotWidth: 6,
                      spacing: 8,
                      dotColor: Colors.grey.withOpacity(0.3),
                      activeDotColor: const Color(0xff7452FF),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.sp,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.sp),
              child: Text(
                "Recent Stories",
                style: TextStyle(
                  fontFamily: FontConstants.SfProBold,
                  color: Colors.black,
                  fontSize: 22.sp,
                ),
              ),
            ),
            SizedBox(
              height: 14.sp,
            ),
            ListView.builder(
              itemCount: 4,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NewsDetails(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 20.sp,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.sp),
                              child: Image.asset(
                                "assets/recent_stories.jpeg",
                                width: 125.sp,
                                height: 114.sp,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 9.sp,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Events",
                                  style: GoogleFonts.poppins(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff4a4a4a)
                                        .withOpacity(0.6),
                                  ),
                                ),
                                SizedBox(
                                  height: 8.sp,
                                ),
                                SizedBox(
                                  width: 212.sp,
                                  child: Text(
                                    "Cultural Fest, A Celebration of Unity and Diversity",
                                    maxLines: 2,
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      overflow: TextOverflow.ellipsis,
                                      fontFamily: FontConstants.SfProMedium,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff4a4a4a),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 8.sp,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 27.sp,
                                      height: 27.sp,
                                      child: const CircleAvatar(
                                        backgroundImage: AssetImage(
                                            "assets/recent_stories_avatar.jpeg"),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 7.sp,
                                    ),
                                    SizedBox(
                                      width: 87.sp,
                                      child: Text(
                                        "Arif Hassan",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.poppins(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xff4a4a4a)
                                              .withOpacity(0.6),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5.sp,
                                    ),
                                    Container(
                                      width: 3.sp,
                                      height: 3.sp,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff4A4A4A)
                                            .withOpacity(0.8),
                                        borderRadius:
                                            BorderRadius.circular(20.sp),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5.sp,
                                    ),
                                    Text(
                                      "Jan 8, 2025",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff4a4a4a)
                                            .withOpacity(0.6),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.sp,
                        ),
                        if (index != 3)
                          Column(
                            children: [
                              SizedBox(
                                width: 342.5.sp,
                                child: Divider(
                                  thickness: 1.sp,
                                  color: const Color(0xffF0F0F0),
                                ),
                              ),
                              SizedBox(
                                height: 15.sp,
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class ExpandingDotIndicator extends StatelessWidget {
  final int activeIndex;
  final int count;
  final double dotHeight;
  final double dotWidth;
  final double spacing;
  final Color dotColor;
  final Color activeDotColor;

  const ExpandingDotIndicator({
    super.key,
    required this.activeIndex,
    required this.count,
    this.dotHeight = 6.0,
    this.dotWidth = 6.0,
    this.spacing = 6.0,
    this.dotColor = Colors.grey,
    this.activeDotColor = Colors.blue,
  });
  Color getDotColor(int index, int activeIndex, Color activeColor) {
    // Define the maximum opacity for the active dot
    double maxOpacity = 1.0;
    // Define the minimum opacity for the farthest dots
    double minOpacity = 0.2;

    // Calculate the difference between the current dot and the active dot
    int distance = (index - activeIndex).abs();

    // Reduce opacity as the dot moves away from the active dot
    double opacity = maxOpacity - (distance * 0.2); // Adjust the fade rate

    // Ensure opacity doesn't go below minOpacity
    opacity = opacity.clamp(minOpacity, maxOpacity);

    return activeColor.withOpacity(opacity);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(count, (index) {
        bool isActive = index == activeIndex;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: EdgeInsets.symmetric(horizontal: spacing / 2),
          width: isActive ? dotWidth * 2 : dotWidth, // Expands active dot
          height: dotHeight,
          decoration: BoxDecoration(
            color: getDotColor(index, activeIndex, activeDotColor),
            borderRadius: BorderRadius.circular(dotHeight / 2),
          ),
        );
      }),
    );
  }
}

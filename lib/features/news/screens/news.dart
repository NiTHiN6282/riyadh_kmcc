import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riyadh_kmcc_new/core/constants/font_constants.dart';

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
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(12.sp),
                      child: Container(
                        width: 323.sp,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.sp),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: CachedNetworkImageProvider(
                              "https://s3-alpha-sig.figma.com/img/38e0/5b90/e1f1fae25ceeb468568ec3dfec31bda7?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=rhxWDJDQP7xmyChk8JyOU2ybaZU6Ao8Z7LLht2L9tI9zfnrpUkAMs5gij33UtP5tu9IPzZeUx7d59xU81vwwAXCpQEMI1ah5Bp8GHkEgTsoWDMlcyElvRAFLITZhjLM0thkeANnAJqnVmzMfPtSS3VwsbVU0h9QT~ZHzzdoH2I90LP5osY47r51LhQjeTHdE8TKomriSTPXWJfcG5VN2x2BFyodbtF4dNao7vs57G8OKxJw-79DRA9ueMljoJejbbsJYBokLaeej3L8XINNXDKElOFdDqGYhGyHuMisuMGFj6sXnTWT04kzt20fKENm~FpcxYw0mHijEg40T7gsz2Q__",
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
                                height: 100.sp,
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 101.94.sp,
                                  height: 26.16.sp,
                                  margin: EdgeInsets.only(
                                      left: 11.8.sp, top: 14.27.sp),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.sp),
                                    color: const Color(0xff7452FF),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Community News",
                                      style: TextStyle(
                                        fontFamily: FontConstants.SfProRegular,
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
                return Padding(
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
                            child: CachedNetworkImage(
                              imageUrl:
                                  "https://s3-alpha-sig.figma.com/img/eb82/0cb6/f3e54a1eb3aec2f41e7fc4ca3936ffbd?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=gNdIBFOVylmICD22ThH0L9nCSEOkhYX5utJ6DlzELsP93O94lfiZQn7Fhj-UBXM6AcAvZ6xd5u6NGlFudUw~-oh82x1mdvA2Ar4trISqFhtwYhYpEPUJ3~gwNzgwAv0qOuvxZdjEA~XrFFbh0Qxx4~Nk-FNtbrLPgpMHbWpnczm5sIKeC~I4CCQBeHaMAheSaXhjl92g~mGeROyeve2Wg3T9886~z4heIi4Yd-wxxw~~X2oKj8U-xlyBBtBMsP~ttLZCljSP3fNm0KjN~0y~-SWWBkISMUUA6SpVpbXWKnZFTXjOCmaeK2r1EJz2OiyaXNYpGAxX8nyfO6YT-KjLYg__",
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
                                  color:
                                      const Color(0xff4a4a4a).withOpacity(0.6),
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
                                      backgroundImage:
                                          CachedNetworkImageProvider(
                                        "https://s3-alpha-sig.figma.com/img/ee09/ed90/10db97c75e0a53001d84f95ff85f11d3?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=RxQy1~f6M99RXPgVdpg58DV6z52P~eBhBbjKrrFrnEvEAoW-yxaFhwl02rGZuNUacaWOM130U0EKaeC~Xww0F2L1335CppQPrxRXcWH2iJjgqyEDIseH35PYtgbnHMfutX5ZdxZrM5tpVFijQTNbiPSCl6eW1XlqIbCMBYxabFizT8fWqTI9HT0j7pSvAq8aqj4w8HfouXnJ7YIYK93ohN6izUlHrEtWgLNN1iHsRRM8P0YE0pg0eX-0yHuOcQHVL1j2o8XRlptCahHgYScuTsB7v4rJOPsZ2w~vy4h6fakDFDaKk6NIN5jz3cpd9Yj9nts3cpYxX2aMDX2GGFHSlw__",
                                      ),
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
                                        color: const Color(0xff4a4a4a),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.sp,
                                  ),
                                  Container(
                                    width: 3.sp,
                                    height: 3.sp,
                                    color: const Color(0xff4A4A4A)
                                        .withOpacity(0.8),
                                  ),
                                  SizedBox(
                                    width: 5.sp,
                                  ),
                                  Text(
                                    "Jan 8, 2025",
                                    style: GoogleFonts.poppins(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff4a4a4a),
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
                      SizedBox(
                        width: 342.5.sp,
                        child: Divider(
                          thickness: 1.sp,
                          color: const Color(0xffF0F0F0),
                        ),
                      ),
                    ],
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

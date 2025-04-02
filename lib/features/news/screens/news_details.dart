import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/font_constants.dart';

class NewsDetails extends StatefulWidget {
  const NewsDetails({super.key});

  @override
  State<NewsDetails> createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> {
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
          "KMCC NEWS",
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
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  "assets/news_banner.jpeg",
                  height: 335.sp,
                  width: double.infinity, // Ensure full width
                  fit: BoxFit.cover,
                ),
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
                Positioned(
                  top: 184.sp,
                  left: 0, // Ensure it starts from the left edge
                  right: 0, // Ensure it spans the full width
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 29.5.sp),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 101.94.sp,
                              height: 26.16.sp,
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
                            SizedBox(height: 7.sp),
                            SizedBox(
                              width: 322.sp,
                              child: Text(
                                "KMCC Hosts Annual Gala for Over 500 Members",
                                maxLines: 2,
                                style: TextStyle(
                                  fontFamily: FontConstants.SfProRegular,
                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 20.sp,
                                  color: const Color(0xffFFFFFF),
                                ),
                              ),
                            ),
                            SizedBox(height: 7.sp),
                            Text(
                              "6 hours ago",
                              style: TextStyle(
                                fontFamily: FontConstants.SfProRegular,
                                fontSize: 13.sp,
                                color: const Color(0xffFFFFFF).withOpacity(0.7),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15.sp),
                      Container(
                        width: double.infinity, // Ensure full width
                        padding: EdgeInsets.all(20.sp),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40.sp),
                            topRight: Radius.circular(40.sp),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const CircleAvatar(
                                  backgroundImage: AssetImage(
                                      "assets/recent_stories_avatar.jpeg"),
                                ),
                                SizedBox(width: 10.sp),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Text(
                                        "Farah Ibrahim",
                                        style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(width: 5.sp),
                                      Image.asset(
                                        "assets/verified.png",
                                        width: 21.sp,
                                        height: 21.sp,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.sp,
            ),
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: 20.0.sp, left: 20.sp, right: 20.sp, bottom: 48.sp),
                    child: Text(
                      '''The Kerala Muslim Cultural Centre (KMCC) recently hosted its highly anticipated Annual Gala, bringing together over 500 members from across the community. The event, which took place at a luxurious venue in the heart of the city, provided a vibrant atmosphere filled with excitement, celebration, and a shared sense of unity. Members were treated to a night of cultural performances, delectable cuisine, and insightful speeches that reflected the organization’s deep-rooted commitment to community empowerment, education, and cultural preservation. The gala marked a significant milestone for KMCC as it continues to grow as a pillar of support for its members, both locally and internationally.

The evening featured a series of engaging speeches by key figures within KMCC, including community leaders and prominent personalities who underscored the organization's achievements over the past year. Highlighting the success of various cultural programs, charitable initiatives, and educational projects, the event also celebrated the hard work and dedication of volunteers who have tirelessly contributed to the community’s growth. “Tonight, we not only celebrate our achievements but also reaffirm our commitment to strengthening the bond within our community,” said the Chief Guest, Dr. Ameer Ali, during his speech.''',
                      style: GoogleFonts.poppins(
                        color: const Color(0xff4A4A4A),
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.sp),
                    child: Text(
                      "More News",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 20.sp,
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1.sp,
                    color: const Color(0xffF0F0F0),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            fontFamily:
                                                FontConstants.SfProMedium,
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
          ],
        ),
      ),
    );
  }
}

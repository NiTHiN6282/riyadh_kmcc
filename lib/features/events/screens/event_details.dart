import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riyadh_kmcc_new/core/constants/font_constants.dart';
import 'package:riyadh_kmcc_new/features/home/screens/widgets/social_footer_widget.dart';

import '../../../core/constants/constants.dart';
import '../../../theme/palette.dart';

class EventDetails extends StatefulWidget {
  const EventDetails({super.key});

  @override
  State<EventDetails> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  List<String> highlights = [
    "Participants will engage in various sports, including football, cricket, badminton, and athletics.",
    "Evenings will feature cultural programs showcasing traditional music and dance.",
    "A variety of food stalls offering traditional Kerala cuisine will be available throughout the event.",
  ];
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
          "Event Details",
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
        child: Container(
          padding: EdgeInsets.only(
              top: 18.sp, left: 20.sp, right: 20.sp, bottom: 40.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.sp),
                child: Image.asset(
                  "assets/event_details_image.jpeg",
                  width: 362.sp,
                  height: 241.sp,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 15.sp,
              ),
              Container(
                padding: EdgeInsets.only(left: 20.sp, top: 20.sp),
                decoration: BoxDecoration(
                  color: const Color(0xffE5E7EB),
                  borderRadius: BorderRadius.circular(12.sp),
                ),
                width: 362.sp,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 289.sp,
                      child: Text(
                        "Annual KMCC General Body Meeting",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 14.sp,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/calender_icon.svg",
                          width: 14.sp,
                          height: 14.sp,
                          colorFilter: const ColorFilter.mode(
                            Colors.black,
                            BlendMode.srcIn,
                          ),
                        ),
                        SizedBox(
                          width: 8.sp,
                        ),
                        Text(
                          "March 15-17, 2025",
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 14.sp,
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
                          Constants.locationTrans,
                          width: 14.sp,
                          height: 14.sp,
                          colorFilter: const ColorFilter.mode(
                            Colors.black,
                            BlendMode.srcIn,
                          ),
                        ),
                        SizedBox(
                          width: 8.sp,
                        ),
                        Text(
                          "King Fahd Stadium , Riyadh, Saudi Arabia",
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 14.sp,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.sp),
                        color: const Color(0xff171766),
                      ),
                      padding: EdgeInsets.only(
                          left: 23.sp, right: 23.sp, top: 10.sp, bottom: 10.sp),
                      child: Text(
                        "Register Now",
                        style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 21.sp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25.sp,
              ),
              Text(
                "Event Highlights:",
                style: TextStyle(
                  fontFamily: FontConstants.SfProMedium,
                  color: Colors.black,
                  fontSize: 20.sp,
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              ...List.generate(
                highlights.length,
                (index) => Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10, right: 5),
                      child: Icon(
                        Icons.circle,
                        size: 5,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        highlights[index],
                        style: TextStyle(
                          fontFamily: FontConstants.SfProRegular,
                          color: Colors.black,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 22.sp,
              ),
              Text(
                "More Events",
                style: TextStyle(
                  fontFamily: FontConstants.SfProMedium,
                  color: Colors.black,
                  fontSize: 20.sp,
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              ListView.separated(
                itemCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => SizedBox(
                  height: 10.sp,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EventDetails(),
                        ),
                      );
                    },
                    child: Container(
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
                                  "assets/event_detail_image.png",
                                  width: 120.sp,
                                  height: 125.sp,
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
                                    width: 185.sp,
                                    child: Text(
                                      "Annual KMCC General Body Meeting",
                                      maxLines: 2,
                                      style: TextStyle(
                                        color: Colors.black,
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 14.sp,
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
                                          color: Palette.subtitle2
                                              .withOpacity(0.6),
                                          fontSize: 14.sp,
                                          fontFamily:
                                              FontConstants.SfProRegular,
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
                                          color: Palette.subtitle2
                                              .withOpacity(0.6),
                                          fontSize: 14.sp,
                                          fontFamily:
                                              FontConstants.SfProRegular,
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
                    ),
                  );
                },
              ),
              SizedBox(
                height: 41.sp,
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
      ),
    );
  }
}

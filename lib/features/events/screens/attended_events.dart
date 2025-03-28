import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/constants.dart';
import '../../../core/constants/font_constants.dart';
import '../../../theme/palette.dart';
import 'event_details.dart';

class AttendedEvents extends StatefulWidget {
  const AttendedEvents({super.key});

  @override
  State<AttendedEvents> createState() => _AttendedEventsState();
}

class _AttendedEventsState extends State<AttendedEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        shadowColor: const Color(0xff4A4A4A),
        elevation: 0.2,
        centerTitle: true,
        title: Text(
          "Attended Events",
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
              top: 16.5.sp, left: 20.sp, right: 20.sp, bottom: 38.5.sp),
          child: Column(
            children: [
              TextFormField(
                style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  fillColor: const Color(0xffF9FAFB),
                  filled: true,
                  contentPadding: EdgeInsets.only(left: 12.sp),
                  hintText: "Search by name",
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12),
                    child: SvgPicture.asset(
                      "assets/icons/search.svg",
                    ),
                  ),
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff4A4A4A).withOpacity(0.6),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffF3F4F6)),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffF3F4F6)),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xffF3F4F6),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16.sp,
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
            ],
          ),
        ),
      ),
    );
  }
}

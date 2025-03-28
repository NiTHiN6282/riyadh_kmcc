import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/font_constants.dart';

class ApplyJob extends StatefulWidget {
  const ApplyJob({super.key});

  @override
  State<ApplyJob> createState() => _ApplyJobState();
}

class _ApplyJobState extends State<ApplyJob> {
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
        leadingWidth: 48.sp,
        title: Text(
          "Apply Job",
          style: GoogleFonts.poppins(
            fontSize: 20.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
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
          padding: EdgeInsets.only(top: 23.sp, left: 20.sp, right: 20.sp),
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      "assets/company_logo.png",
                      width: 64.sp,
                      height: 64.sp,
                    ),
                  ),
                  SizedBox(
                    width: 16.sp,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Flutter Developer",
                        style: TextStyle(
                          fontFamily: FontConstants.SfProMedium,
                          color: Colors.black,
                          fontSize: 22.sp,
                        ),
                      ),
                      SizedBox(
                        height: 4.sp,
                      ),
                      Text(
                        "Bapco Bahrain",
                        style: TextStyle(
                          fontFamily: FontConstants.SfProRegular,
                          color: const Color(0xff4B5563),
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 32.sp,
              ),
              Container(
                padding: EdgeInsets.all(25.sp),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.sp),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Quick Apply",
                      style: TextStyle(
                        fontFamily: FontConstants.SfProMedium,
                        color: Colors.black,
                        fontSize: 18.sp,
                      ),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Text(
                      "Full Name",
                      style: TextStyle(
                        fontFamily: FontConstants.SfProRegular,
                        color: const Color(0xff374151),
                        fontSize: 15.sp,
                      ),
                    ),
                    SizedBox(
                      height: 4.sp,
                    ),
                    TextField(
                      style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff4A4A4A).withOpacity(0.6),
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 12.sp),
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff4A4A4A).withOpacity(0.6),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffB4B4B4)),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffB4B4B4)),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.sp,
                    ),
                    Text(
                      "Email",
                      style: TextStyle(
                        fontFamily: FontConstants.SfProRegular,
                        color: const Color(0xff374151),
                        fontSize: 15.sp,
                      ),
                    ),
                    SizedBox(
                      height: 4.sp,
                    ),
                    TextField(
                      style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff4A4A4A).withOpacity(0.6),
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 12.sp),
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff4A4A4A).withOpacity(0.6),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffB4B4B4)),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffB4B4B4)),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.sp,
                    ),
                    Text(
                      "Phone",
                      style: TextStyle(
                        fontFamily: FontConstants.SfProRegular,
                        color: const Color(0xff374151),
                        fontSize: 15.sp,
                      ),
                    ),
                    SizedBox(
                      height: 4.sp,
                    ),
                    TextField(
                      style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff4A4A4A).withOpacity(0.6),
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 12.sp),
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff4A4A4A).withOpacity(0.6),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffB4B4B4)),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffB4B4B4)),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.sp,
                    ),
                    Text(
                      "Resume",
                      style: TextStyle(
                        fontFamily: FontConstants.SfProRegular,
                        color: const Color(0xff374151),
                        fontSize: 15.sp,
                      ),
                    ),
                    SizedBox(
                      height: 4.sp,
                    ),
                    DottedBorder(
                      borderType: BorderType.RRect,
                      radius: Radius.circular(8.sp),
                      strokeWidth: 2.sp,
                      color: const Color(0xffE5E7EB),
                      padding: EdgeInsets.all(18.sp),
                      child: Center(
                        child: Column(
                          children: [
                            SvgPicture.asset("assets/icons/upload.svg"),
                            Text(
                              "Click to upload",
                              style: GoogleFonts.inter(
                                color: const Color(0xff6B7280),
                                fontSize: 14.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.sp,
                    ),
                    Container(
                      height: 45.sp,
                      decoration: BoxDecoration(
                          color: const Color(0xff7452FF),
                          borderRadius: BorderRadius.circular(10.sp)),
                      child: Center(
                        child: Text(
                          "Submit Application",
                          style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

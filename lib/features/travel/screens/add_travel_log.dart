import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:riyadh_kmcc_new/core/constants/font_constants.dart';

import '../../../theme/palette.dart';

class AddTravelLog extends StatefulWidget {
  const AddTravelLog({super.key});

  @override
  State<AddTravelLog> createState() => _AddTravelLogState();
}

class _AddTravelLogState extends State<AddTravelLog> {
  DateTime? travelDate;
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
          "New Travel Details",
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
        child: Padding(
          padding: EdgeInsets.only(top: 22.sp, left: 20.sp, right: 20.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Name :",
                style: TextStyle(
                  fontFamily: FontConstants.SfProRegular,
                  fontSize: 15.sp,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 8.sp,
              ),
              SizedBox(
                height: 48.sp,
                child: TextField(
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff4A4A4A).withOpacity(0.6),
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 12.sp),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Enter your full name.",
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
              ),
              SizedBox(
                height: 20.sp,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Airline/Flight Name :",
                        style: TextStyle(
                          fontFamily: FontConstants.SfProRegular,
                          fontSize: 15.sp,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 8.sp,
                      ),
                      SizedBox(
                        height: 48.sp,
                        width: 200,
                        child: TextField(
                          style: GoogleFonts.poppins(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff4A4A4A).withOpacity(0.6),
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.only(left: 12.sp),
                            hintText: "MB1729N7SH2",
                            hintStyle: GoogleFonts.poppins(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff4A4A4A).withOpacity(0.6),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffB4B4B4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffB4B4B4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Date of Travel :",
                          style: TextStyle(
                            fontFamily: FontConstants.SfProRegular,
                            fontSize: 15.sp,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 8.sp,
                        ),
                        InkWell(
                          onTap: () async {
                            travelDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2028),
                            );
                            setState(() {});
                          },
                          child: Container(
                            height: 48.sp,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: const Color(0xffB4B4B4),
                                ),
                                color: Colors.white),
                            child: Center(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    travelDate == null
                                        ? "DD/MM/YYYY"
                                        : DateFormat("dd/MM/yyyy")
                                            .format(travelDate!),
                                    style: GoogleFonts.poppins(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff4A4A4A)
                                          .withOpacity(0.6),
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: const Color(0xff4A4A4A)
                                        .withOpacity(0.6),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20.sp,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Contact Number :",
                          style: TextStyle(
                            fontFamily: FontConstants.SfProRegular,
                            fontSize: 15.sp,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 8.sp,
                        ),
                        SizedBox(
                          height: 48.sp,
                          child: TextField(
                            style: GoogleFonts.poppins(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff4A4A4A).withOpacity(0.6),
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 12.sp),
                              hintText: "+966 653 2253 82",
                              filled: true,
                              fillColor: Colors.white,
                              hintStyle: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff4A4A4A).withOpacity(0.6),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffB4B4B4)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffB4B4B4)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              Container(
                // width: 330.sp,
                height: 42.sp,
                decoration: BoxDecoration(
                  color: Palette.border1,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Save Entry",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "*",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(
                    width: 5.sp,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 305.sp,
                        child: Text(
                          "You can edit your entry anytime in the   Travel Log History.",
                          style: GoogleFonts.poppins(
                            color: const Color(0xff4A4A4A).withOpacity(0.7),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

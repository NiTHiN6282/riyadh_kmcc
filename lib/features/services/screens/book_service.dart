import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:riyadh_kmcc_new/core/constants/font_constants.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../theme/palette.dart';

class BookService extends StatefulWidget {
  const BookService({super.key});

  @override
  State<BookService> createState() => _BookServiceState();
}

class _BookServiceState extends State<BookService> {
  DateTime? travelDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDEDED),
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        shadowColor: const Color(0xff4A4A4A),
        elevation: 0.2,
        centerTitle: true,
        title: Text(
          "Book a Service",
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
                "Service :",
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
                    hintText: "Web Development",
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Date :",
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
                          width: 165.sp,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color(0xffB4B4B4),
                            ),
                          ),
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
                                  color:
                                      const Color(0xff4A4A4A).withOpacity(0.6),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your Name :",
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
                        width: 165.sp,
                        child: TextField(
                          style: GoogleFonts.poppins(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff4A4A4A).withOpacity(0.6),
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 12.sp),
                            hintText: "Shoib Malik",
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
              Container(
                padding: EdgeInsets.all(2.sp),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xffB4B4B4),
                  ),
                  borderRadius: BorderRadius.circular(10.sp),
                ),
                child: IntlPhoneField(
                  showCountryFlag: false,
                  onCountryChanged: (value) {
                    print(value.code);
                    print(value.dialCode);
                  },
                  dropdownIcon: const Icon(Icons.keyboard_arrow_down_sharp),
                  dropdownIconPosition: IconPosition.trailing,
                  decoration: const InputDecoration(border: InputBorder.none),
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff4A4A4A),
                  ),
                  dropdownTextStyle: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff3B3B3B),
                  ),
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Price :",
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
                        width: 116.sp,
                        child: TextField(
                          style: GoogleFonts.poppins(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff4A4A4A).withOpacity(0.6),
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 12.sp),
                            hintText: "2999",
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
                  Container(
                    height: 48.sp,
                    width: 200.sp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xffB4B4B4),
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Payment Method",
                            style: GoogleFonts.poppins(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff4A4A4A).withOpacity(0.6),
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: const Color(0xff4A4A4A).withOpacity(0.6),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              InkWell(
                onTap: () async {
                  final Uri launchUri = Uri(
                    scheme: 'tel',
                    path: "6282329387",
                  );
                  await launchUrl(launchUri);
                },
                child: Container(
                  // width: 330.sp,
                  height: 42.sp,
                  decoration: BoxDecoration(
                    color: Palette.border1,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Book Now",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
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
                          "Please note: Cancellations made 4 days or more before the event receive a full refund. Cancellations within 3 to 6 days incur a 20% fee; within 48 hours, a 30% fee. No refunds for cancellations within 24 hours.",
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:riyadh_kmcc_new/core/constants/font_constants.dart';

import '../../../theme/palette.dart';

class EventRegistration extends StatefulWidget {
  const EventRegistration({super.key});

  @override
  State<EventRegistration> createState() => _EventRegistrationState();
}

class _EventRegistrationState extends State<EventRegistration> {
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
          "Event Registration",
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
                "Full Name :",
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
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.only(left: 12.sp),
                    hintText: "Enter your full name.",
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff4A4A4A).withOpacity(0.6),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffB4B4B4),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffB4B4B4),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
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
              Text(
                "Membership ID:",
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
                    hintText: "MB1729N7SH2",
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.only(left: 12.sp),
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff4A4A4A).withOpacity(0.6),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffB4B4B4),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffB4B4B4),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
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
              Text(
                "Phone Number:",
                style: TextStyle(
                  fontFamily: FontConstants.SfProRegular,
                  fontSize: 15.sp,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 8.sp,
              ),
              Container(
                padding: EdgeInsets.all(2.sp),
                decoration: BoxDecoration(
                  color: Colors.white,
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
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.white,
                  ),
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
              Text(
                "Attendees:",
                style: TextStyle(
                  fontFamily: FontConstants.SfProRegular,
                  fontSize: 15.sp,
                  color: Colors.black,
                ),
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
                    "Join Now",
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
                          "For any questions or assistance with the registration process, please contact the KMCC organizing committee at:",
                          style: GoogleFonts.poppins(
                            color: const Color(0xff4A4A4A).withOpacity(0.7),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12.sp,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset("assets/icons/mail.svg"),
                          SizedBox(
                            width: 11.sp,
                          ),
                          Text(
                            "cyberkmcc@gmail.com",
                            style: TextStyle(
                                fontFamily: FontConstants.SfProRegular,
                                fontSize: 15.sp,
                                color: const Color(0xff4A4A4A)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset("assets/icons/call.svg"),
                          SizedBox(
                            width: 11.sp,
                          ),
                          Text(
                            "+966 987654321",
                            style: TextStyle(
                                fontFamily: FontConstants.SfProRegular,
                                fontSize: 15.sp,
                                color: const Color(0xff4A4A4A)),
                          )
                        ],
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

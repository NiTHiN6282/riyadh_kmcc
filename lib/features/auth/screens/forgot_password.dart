import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riyadh_kmcc_new/core/constants/font_constants.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
          "Forgot Password",
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
      body: Container(
        padding: EdgeInsets.only(top: 29.sp, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Please enter your email to reset the password",
              style: GoogleFonts.poppins(
                color: const Color(0xff989898),
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
            Text(
              "Your Mail",
              style: TextStyle(
                fontFamily: FontConstants.SfProMedium,
                fontSize: 16.sp,
                color: const Color(0xff2A2A2A),
              ),
            ),
            SizedBox(
              height: 10.sp,
            ),
            TextField(
              style: GoogleFonts.poppins(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff4A4A4A).withOpacity(0.6),
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 12.sp),
                hintText: "Enter your email",
                hintStyle: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
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
              height: 24.sp,
            ),
            Container(
              height: 45.sp,
              decoration: BoxDecoration(
                  color: const Color(0xff7452FF),
                  borderRadius: BorderRadius.circular(10.sp)),
              child: Center(
                child: Text(
                  "Reset Password",
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
    );
  }
}

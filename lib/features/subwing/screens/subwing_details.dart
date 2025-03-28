import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riyadh_kmcc_new/core/constants/font_constants.dart';

class SubWingsDetails extends StatefulWidget {
  const SubWingsDetails({super.key});

  @override
  State<SubWingsDetails> createState() => _SubWingsDetailsState();
}

class _SubWingsDetailsState extends State<SubWingsDetails> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        shadowColor: const Color(0xff4A4A4A),
        elevation: 0.2,
        centerTitle: true,
        title: Text(
          "Arts & Cultural Wing",
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
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          shrinkWrap: true,
          // physics: const NeverScrollableScrollPhysics(), // Disable scrolling
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 3 items per row
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.8, // Square shape
          ),
          itemCount: 3,
          itemBuilder: (context, index) {
            return Container(
              width: screenWidth * 0.43,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.transparent,
              ),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  // Profile Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/subwing_member.jpeg",
                      width: screenWidth * 0.43,
                      height: screenWidth * 0.61,
                      fit: BoxFit.cover,
                    ),
                  ),

                  // Gradient Overlay
                  Container(
                    width: screenWidth * 0.43,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(0.8),
                          Colors.transparent,
                        ],
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Shareef dc",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: FontConstants.SfProMedium,
                            fontSize: 17.sp,
                          ),
                        ),
                        Text(
                          "Vice President",
                          style: TextStyle(
                            color: const Color(0xffD4D4D8),
                            fontFamily: FontConstants.SfProRegular,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

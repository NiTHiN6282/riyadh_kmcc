import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riyadh_kmcc_new/core/constants/font_constants.dart';

import 'edit_profile.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
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
          "Personal Details",
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
          padding: EdgeInsets.all(20.sp),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.sp),
                ),
                padding: EdgeInsets.only(
                  top: 19.5.sp,
                  left: 36.sp,
                  right: 36.sp,
                ),
                child: Column(
                  children: [
                    Container(
                      width: 96.sp,
                      height: 96.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.sp),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/profile_pic.jpeg"),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 14.sp,
                    ),
                    Text(
                      "Marco Verrati",
                      style: TextStyle(
                        color: const Color(0xff0B0B0B),
                        fontFamily: FontConstants.SfProMedium,
                        fontSize: 18.sp,
                      ),
                    ),
                    SizedBox(
                      height: 4.sp,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Member",
                          style: TextStyle(
                            color: const Color(0xff4A4A4A),
                            fontFamily: FontConstants.SfProRegular,
                            fontSize: 15.sp,
                          ),
                        ),
                        SizedBox(
                          width: 5.5.sp,
                        ),
                        SvgPicture.asset("assets/icons/green_verified.svg"),
                      ],
                    ),
                    SizedBox(
                      height: 14.sp,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const EditProfile(),
                            ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffCECECE),
                          ),
                          borderRadius: BorderRadius.circular(12.sp),
                        ),
                        padding: EdgeInsets.only(
                          top: 6.sp,
                          bottom: 6.sp,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Edit Profile",
                              style: GoogleFonts.poppins(
                                color: const Color(0xff4A4A4A).withOpacity(0.6),
                                fontSize: 12.sp,
                              ),
                            ),
                            SizedBox(
                              width: 5.sp,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: const Color(0xff4A4A4A).withOpacity(0.6),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 19.5.sp,
                    ),
                  ],
                ),
              ),
              ContainerWidget(
                heading: "Job & Place",
                tiles: [
                  TileWidget(
                    title: "Occupation",
                    value: "Software Engineer",
                  ),
                  TileWidget(
                    title: "Employer",
                    value: "ABC Corp.",
                  ),
                  TileWidget(
                    isBorderEnabled: false,
                    title: "Place",
                    value: "Riyadh",
                  ),
                ],
              ),
              ContainerWidget(
                heading: "Personal Details",
                tiles: [
                  TileWidget(
                    title: "Date of Birth",
                    value: "03/02/1999",
                  ),
                  TileWidget(
                    title: "Blood Group",
                    value: "B Positive",
                    isBorderEnabled: false,
                  ),
                ],
              ),
              ContainerWidget(
                heading: "Contact Information",
                tiles: [
                  TileWidget(
                    title: "Phone",
                    value: "+966 123 456 789",
                  ),
                  TileWidget(
                    title: "Address",
                    value:
                        "1234 King Fahd Road, Al Olaya District, Riyadh 12345, Saudi Arabia",
                    isBorderEnabled: false,
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

class ContainerWidget extends StatelessWidget {
  String heading;
  List<TileWidget> tiles;
  ContainerWidget({super.key, required this.heading, required this.tiles});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.sp),
      ),
      margin: const EdgeInsets.only(top: 20),
      // width: 400.sp,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.sp, top: 10.sp, bottom: 11.sp),
            child: Text(
              heading,
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 17.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Divider(
            thickness: 1.sp,
            color: const Color(0xffF0F0F0),
          ),
          ...tiles,
        ],
      ),
    );
  }
}

class TileWidget extends StatefulWidget {
  bool isBorderEnabled;
  String title;
  String value;
  TileWidget({
    super.key,
    this.isBorderEnabled = true,
    required this.title,
    required this.value,
  });

  @override
  State<TileWidget> createState() => _TileWidgetState();
}

class _TileWidgetState extends State<TileWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 8.sp,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 25.sp,
                  ),
                  Text(
                    "${widget.title} :",
                    style: TextStyle(
                      fontFamily: FontConstants.SfProRegular,
                      fontSize: 15.sp,
                      color: const Color(0xff4A4A4A),
                    ),
                  ),
                  SizedBox(
                    width: 13.sp,
                  ),
                  Expanded(
                    child: Text(
                      widget.value,
                      style: TextStyle(
                        fontFamily: FontConstants.SfProRegular,
                        fontSize: 16.sp,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 13.sp,
        ),
        if (widget.isBorderEnabled)
          Divider(
            thickness: 1.sp,
            color: const Color(0xffF0F0F0),
          ),
      ],
    );
  }
}

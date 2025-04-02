import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riyadh_kmcc_new/core/constants/font_constants.dart';

import 'apply_job.dart';

class CareerDetails extends StatefulWidget {
  const CareerDetails({super.key});

  @override
  State<CareerDetails> createState() => _CareerDetailsState();
}

class _CareerDetailsState extends State<CareerDetails> {
  List keyResponsibilites = [
    "Design and build advanced applications for the Android and iOS platform",
    "Collaborate with cross-functional teams",
    "Unit-test code for robustness, including edge cases, usability, and general reliability",
    "Work on bug fixing and improving application performance",
  ];
  List requirements = [
    "3+ years of Flutter development experience",
    "Strong knowledge of Dart programming language",
    "Experience with RESTful APIs and JSON",
    "Familiarity with Git and version control",
  ];

  List<Map> benefits = [
    {
      "title": "Competitive Salary",
      "icon": "assets/icons/com_sal.svg",
      "description": "Market-leading compensation package",
    },
    {
      "title": "Health Insurance",
      "icon": "assets/icons/health_ins.svg",
      "description": "Comprehensive medical coverage",
    },
    {
      "title": "Paid Time Off",
      "icon": "assets/icons/paid_time_off.svg",
      "description": "30 days annual leave",
    },
    {
      "title": "Learning Budget",
      "icon": "assets/icons/learning_budget.svg",
      "description": "Professional development support",
    },
  ];
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
          "Job Details",
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
      body: Container(
        padding: EdgeInsets.only(left: 18.sp, right: 18.sp),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10.sp,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      "assets/company_logo.png",
                      width: 103.sp,
                      height: 103.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25.sp,
              ),
              Text(
                "Flutter Developer",
                style: TextStyle(
                  fontFamily: FontConstants.SfProBold,
                  color: Colors.black,
                  fontSize: 25.sp,
                ),
              ),
              SizedBox(
                height: 6.sp,
              ),
              Text(
                "Bapco , Hamad Town, Bahrain",
                style: TextStyle(
                  fontFamily: FontConstants.SfProRegular,
                  color: const Color(0xff4A4A4A).withOpacity(0.6),
                  fontSize: 15.sp,
                ),
              ),
              SizedBox(
                height: 25.sp,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: 155.sp,
                      padding: EdgeInsets.only(
                          left: 10.sp, top: 13.5.sp, bottom: 13.5.sp),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.sp),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(9.5.sp),
                            decoration: BoxDecoration(
                                color:
                                    const Color(0xff7452FF).withOpacity(0.25),
                                borderRadius: BorderRadius.circular(30)),
                            child: SvgPicture.asset(
                              "assets/icons/salary.svg",
                              width: 24.sp,
                              height: 24.sp,
                            ),
                          ),
                          SizedBox(
                            width: 10.sp,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Salary",
                                style: GoogleFonts.poppins(
                                  color:
                                      const Color(0xff4A4A4A).withOpacity(0.6),
                                  fontSize: 12.sp,
                                ),
                              ),
                              Text(
                                "\$50 - \$70",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: FontConstants.SfProMedium,
                                  fontSize: 16.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.sp,
                  ),
                  Expanded(
                    child: Container(
                      width: 155.sp,
                      padding: EdgeInsets.only(
                          left: 10.sp, top: 13.5.sp, bottom: 13.5.sp),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.sp),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(9.5.sp),
                            decoration: BoxDecoration(
                                color:
                                    const Color(0xff7452FF).withOpacity(0.25),
                                borderRadius: BorderRadius.circular(30)),
                            child: SvgPicture.asset(
                              "assets/icons/job.svg",
                              width: 24.sp,
                              height: 24.sp,
                            ),
                          ),
                          SizedBox(
                            width: 10.sp,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Job Type",
                                style: GoogleFonts.poppins(
                                  color:
                                      const Color(0xff4A4A4A).withOpacity(0.6),
                                  fontSize: 12.sp,
                                ),
                              ),
                              Text(
                                "Full Time",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: FontConstants.SfProMedium,
                                  fontSize: 16.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 22.sp,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.sp)),
                width: 362.sp,
                padding: EdgeInsets.only(
                  left: 24.sp,
                  right: 24.sp,
                  top: 26.sp,
                  bottom: 26.sp,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Job Description",
                      style: TextStyle(
                        fontFamily: FontConstants.SfProBold,
                        color: Colors.black,
                        fontSize: 20.sp,
                      ),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Text(
                      "We are looking for a Flutter Developer to join our team and help us build cross-platform mobile applications. You will be responsible for developing and maintaining high-quality mobile applications.",
                      style: GoogleFonts.poppins(
                        color: const Color(0xff4B5563),
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(
                      height: 26.sp,
                    ),
                    Text(
                      "Key Responsibilities:",
                      style: TextStyle(
                        fontFamily: FontConstants.SfProMedium,
                        color: const Color(0xff1F2937),
                        fontSize: 18.sp,
                      ),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    ListView.separated(
                      itemCount: keyResponsibilites.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        String key = keyResponsibilites[index];
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5.sp),
                              child:
                                  SvgPicture.asset("assets/icons/key_res.svg"),
                            ),
                            SizedBox(
                              width: 15.sp,
                            ),
                            Expanded(
                              child: Text(
                                key,
                                style: GoogleFonts.poppins(
                                  color: const Color(0xff4B5563),
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(
                        height: 10.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.sp)),
                width: 362.sp,
                padding: EdgeInsets.only(
                  left: 24.sp,
                  right: 24.sp,
                  top: 26.sp,
                  bottom: 26.sp,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Requirements",
                      style: TextStyle(
                        fontFamily: FontConstants.SfProMedium,
                        color: const Color(0xff1F2937),
                        fontSize: 20.sp,
                      ),
                    ),
                    SizedBox(
                      height: 24.sp,
                    ),
                    ListView.separated(
                      itemCount: requirements.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        String req = requirements[index];
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5.sp),
                              child: SvgPicture.asset(
                                  "assets/icons/green_tick.svg"),
                            ),
                            SizedBox(
                              width: 12.sp,
                            ),
                            Expanded(
                              child: Text(
                                req,
                                style: GoogleFonts.poppins(
                                  color: const Color(0xff4B5563),
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(
                        height: 17.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.sp)),
                width: 362.sp,
                padding: EdgeInsets.only(
                  left: 20.sp,
                  right: 20.sp,
                  top: 26.sp,
                  bottom: 26.sp,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Benefits",
                      style: TextStyle(
                        fontFamily: FontConstants.SfProMedium,
                        color: const Color(0xff1F2937),
                        fontSize: 20.sp,
                      ),
                    ),
                    SizedBox(
                      height: 24.sp,
                    ),
                    ListView.separated(
                      itemCount: benefits.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        Map benefit = benefits[index];
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5.sp),
                              child: SvgPicture.asset(benefit['icon']),
                            ),
                            SizedBox(
                              width: 12.sp,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  benefit['title'],
                                  style: TextStyle(
                                    fontFamily: FontConstants.SfProMedium,
                                    color: const Color(0xff1F2937),
                                    fontSize: 16.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 4.sp,
                                ),
                                SizedBox(
                                  width: 260.sp,
                                  child: Text(
                                    benefit['description'],
                                    style: GoogleFonts.poppins(
                                      color: const Color(0xff4B5563),
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(
                        height: 17.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 90.sp,
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        padding: EdgeInsets.only(left: 20.sp, top: 10.sp, bottom: 10.sp),
        child: Row(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Applicant",
                  style: GoogleFonts.poppins(
                    color: const Color(0xff4A4A4A).withOpacity(0.6),
                    fontSize: 14.sp,
                  ),
                ),
                Row(
                  children: [
                    SvgPicture.asset("assets/icons/applicants.svg"),
                    SizedBox(
                      width: 8.sp,
                    ),
                    Text(
                      "1,326",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 41.sp,
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ApplyJob(),
                    ),
                  );
                },
                child: Container(
                  height: 45.sp,
                  decoration: BoxDecoration(
                      color: const Color(0xff7452FF),
                      borderRadius: BorderRadius.circular(18.sp)),
                  child: Center(
                    child: Text(
                      "Apply Now",
                      style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20.sp,
            ),
          ],
        ),
      ),
    );
  }
}

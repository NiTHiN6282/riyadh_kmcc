import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/constants.dart';

class EventDetails extends StatefulWidget {
  const EventDetails({super.key});

  @override
  State<EventDetails> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
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
                child: CachedNetworkImage(
                  imageUrl:
                      "https://s3-alpha-sig.figma.com/img/cee0/ae78/093541149c79878e643c9d8866e3a994?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=Ss7yKYp~kH2QK4DyDPwGphrz1dw0peDm9BAzhQyuPDQ7oFDGJa4UJztv34b3x~1j7ZYOaRD-JiWwZhenU1a32qNf6o8BEfi~SRqijrHgVa--Mo~W1h6wR7sl9fd0F73lymtmjJzR8RBVjkmUU~qWT4snLRzqtg6IDe78rQduhmheiA8MsK7mNxn2cRHylWrzW1uiVmI3PzQKGoU7XhFGSgwy46yN7ksCcLBDvL7icKQWcw5Urd-0I14NCTQ1aV4gt2CS2wz42JWoCsb8HF-eHgj7knE0pz6lKTHLr~j6TW7iN9A0cturw~g433nBU5g3VyN8acx4uLA6KJ1CLSEVrw__",
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
                      height: 21.sp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 31.sp,
              ),
              Text(
                "Members Details",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 16.sp,
              ),
              Container()
            ],
          ),
        ),
      ),
    );
  }
}

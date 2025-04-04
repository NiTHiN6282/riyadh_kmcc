import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riyadh_kmcc_new/core/constants/font_constants.dart';
import 'package:riyadh_kmcc_new/core/globals.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/constants/constants.dart';
import '../../events/screens/attended_events.dart';
import '../../notification/screens/notification_screen.dart';
import '../../travel/screens/add_travel_log.dart';
import 'personal_details.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool notification = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.grey,
        elevation: 0.7,
        leadingWidth: 100,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 8),
          child: Image.asset(
            height: 150,
            // width: 100,
            Constants.kmccLogo,
            fit: BoxFit.contain,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NotificationsScreen(),
                    ));
              },
              child: SvgPicture.asset(Constants.bellIcon),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ContainerWidget(
              heading: "Membership Information",
              tiles: [
                TileWidget(
                  icon: "assets/profile/membership.svg",
                  text: "Membership Details",
                ),
                TileWidget(
                  icon: "assets/profile/attended_events.svg",
                  text: "Attended Events",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AttendedEvents(),
                        ));
                  },
                ),
                TileWidget(
                  icon: "assets/profile/new_travel_entry.svg",
                  isBorderEnabled: false,
                  text: "New Travel Entry",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AddTravelLog(),
                        ));
                  },
                ),
              ],
            ),
            ContainerWidget(
              heading: "Projects",
              tiles: [
                TileWidget(
                  icon: "assets/profile/gold_invst_prjct.svg",
                  text: "Gold Investment Project",
                ),
                TileWidget(
                  icon: "assets/profile/long_term_invst_prjct.svg",
                  text: "Long Term Investment Project",
                ),
                TileWidget(
                  icon: "assets/profile/security_scheme.svg",
                  isBorderEnabled: false,
                  text: "Security Scheme Details",
                ),
              ],
            ),
            ContainerWidget(
              heading: "Welfare & Organization",
              tiles: [
                TileWidget(
                  icon: "assets/profile/norka_details.svg",
                  text: "NORKA Details",
                ),
                TileWidget(
                  icon: "assets/profile/welfare_details.svg",
                  text: "Welfare Details",
                ),
                TileWidget(
                  icon: "assets/profile/organization_possession.svg",
                  isBorderEnabled: false,
                  text: "Organization Possession",
                ),
              ],
            ),
            ContainerWidget(
              heading: "Personal Info",
              tiles: [
                TileWidget(
                  icon: "assets/profile/language_region.svg",
                  text: "Language & Region",
                ),
                TileWidget(
                  icon: "assets/profile/blood_group.svg",
                  text: "Blood Group",
                ),
                TileWidget(
                  icon: "assets/profile/job_details.svg",
                  isBorderEnabled: false,
                  text: "Job Details",
                ),
              ],
            ),
            ContainerWidget(
              heading: "Settings",
              tiles: [
                TileWidget(
                  icon: "assets/profile/personal_details.svg",
                  text: "Personal Details",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PersonalDetails(),
                        ));
                  },
                ),
                TileWidget(
                  icon: "assets/profile/notifications.svg",
                  text: "Notifications",
                  isBorderEnabled: false,
                  isSwitch: true,
                ),
              ],
            ),
            ContainerWidget(
              heading: "Help & Feeback",
              tiles: [
                TileWidget(
                  icon: "assets/profile/faq.svg",
                  text: "Frequently Asked Questions",
                ),
                TileWidget(
                  icon: "assets/profile/rate_us.svg",
                  text: "Rate Us",
                ),
                TileWidget(
                  icon: "assets/profile/contact_us.svg",
                  isBorderEnabled: false,
                  text: "Contact Us",
                ),
              ],
            ),
            ContainerWidget(
              heading: "About Us",
              tiles: [
                TileWidget(
                  icon: "assets/profile/about_kmcc.svg",
                  text: "About KMCC",
                ),
                TileWidget(
                  icon: "assets/profile/logout.svg",
                  text: "Logout",
                  isBorderEnabled: false,
                  onTap: () async {
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    prefs.remove("token");
                    prefs.remove("uid");
                    token = "";
                    uid = "";
                  },
                ),
              ],
            ),
            SizedBox(
              height: 29.sp,
            ),
          ],
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
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
      width: 362.sp,
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
  String icon;
  String text;
  bool isSwitch;
  bool notification;
  GestureTapCallback? onTap;
  TileWidget({
    super.key,
    this.isBorderEnabled = true,
    required this.icon,
    required this.text,
    this.isSwitch = false,
    this.notification = false,
    this.onTap,
  });

  @override
  State<TileWidget> createState() => _TileWidgetState();
}

class _TileWidgetState extends State<TileWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Column(
        children: [
          SizedBox(
            height: 8.sp,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 15.31.sp,
                  ),
                  SvgPicture.asset(widget.icon),
                  SizedBox(
                    width: 8.sp,
                  ),
                  Text(
                    widget.text,
                    style: TextStyle(
                      fontFamily: FontConstants.SfProRegular,
                      fontSize: 16.sp,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (!widget.isSwitch)
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15.sp,
                    ),
                  if (widget.isSwitch)
                    Switch(
                      value: widget.notification,
                      activeColor: Colors.black,
                      thumbColor: const MaterialStatePropertyAll(Colors.white),
                      activeTrackColor: Colors.black,
                      onChanged: (value) {
                        widget.notification = value;
                        setState(() {});
                      },
                    ),
                  SizedBox(
                    width: 33.81.sp,
                  ),
                ],
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
      ),
    );
  }
}

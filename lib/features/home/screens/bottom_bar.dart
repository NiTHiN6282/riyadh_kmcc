import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/constants.dart';
import '../../events/screens/events_screen.dart';
import 'home_screen.dart';

int selectedIndex = 0;

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final List<Widget> _widgets = [
    const HomeScreen(),
    const EventScreen(),
    const SizedBox(
      child: Center(
        child: Text(
          "News",
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    ),
    const SizedBox(
      child: Center(
        child: Text(
          "Profile",
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              onTap: () {},
              child: SvgPicture.asset(Constants.bellIcon),
            ),
          )
        ],
      ),
      body: _widgets[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        elevation: 10,
        backgroundColor: Colors.white,
        selectedLabelStyle: GoogleFonts.poppins(
          fontSize: 11.sp,
          color: const Color(0xff000000),
        ),
        selectedItemColor: Colors.black,
        unselectedItemColor: const Color(0xff4a4a4a99).withOpacity(0.6),
        showUnselectedLabels: true,
        unselectedLabelStyle: GoogleFonts.poppins(
          fontSize: 11.sp,
          color: const Color(0xff000000),
        ),
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          selectedIndex = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/home_icon.svg",
              height: 25.sp,
              colorFilter: ColorFilter.mode(
                  selectedIndex == 0
                      ? const Color(0xff000000)
                      : const Color(0xff4a4a4a99).withOpacity(0.6),
                  BlendMode.srcIn),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/events_icon.svg",
              colorFilter: ColorFilter.mode(
                  selectedIndex == 1
                      ? const Color(0xff000000)
                      : const Color(0xff4a4a4a99).withOpacity(0.6),
                  BlendMode.srcIn),
              height: 25.sp,
            ),
            label: "Events",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/news_icon.svg",
              colorFilter: ColorFilter.mode(
                  selectedIndex == 2
                      ? const Color(0xff000000)
                      : const Color(0xff4a4a4a99).withOpacity(0.6),
                  BlendMode.srcIn),
              height: 25.sp,
            ),
            label: "KMCC News",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/profile_icon.svg",
              colorFilter: ColorFilter.mode(
                  selectedIndex == 3
                      ? const Color(0xff000000)
                      : const Color(0xff4a4a4a99).withOpacity(0.6),
                  BlendMode.srcIn),
              height: 25.sp,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            label: "Event",
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

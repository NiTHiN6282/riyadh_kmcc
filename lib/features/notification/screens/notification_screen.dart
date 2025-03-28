import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riyadh_kmcc_new/core/constants/font_constants.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        shadowColor: const Color(0xff4A4A4A),
        elevation: 0.2,
        centerTitle: true,
        title: Text(
          "Notifications",
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
      body: Column(
        children: [
          _buildTabBar(),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildNotificationList(),
                _buildEmptyState("No Events"),
                _buildEmptyState("No Updates"),
              ],
            ),
          ),
          _buildMarkAllButton(),
        ],
      ),
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      controller: _tabController,
      labelColor: Colors.black,
      unselectedLabelColor: Colors.grey,
      indicatorColor: const Color(0xff171766),
      labelStyle: TextStyle(
        fontFamily: FontConstants.SfProMedium,
        fontSize: 16.sp,
      ),
      tabs: const [
        Tab(text: "General"),
        Tab(text: "Events"),
        Tab(text: "Updates"),
      ],
    );
  }

  Widget _buildNotificationList() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _buildNotificationCard(
          icon: "assets/icons/event_noti.svg",
          title: "New Event Added",
          subtitle: "Annual General Meeting scheduled for March 15, 2025.",
          time: "2m ago",
          isNew: true,
        ),
        _buildNotificationCard(
          icon: "assets/icons/update_noti.svg",
          title: "Membership Update",
          subtitle: "Your membership has been renewed successfully.",
          time: "1h ago",
          isNew: false,
        ),
        _buildNotificationCard(
          icon: "assets/icons/system_update_noti.svg",
          title: "System Update",
          subtitle: "App version 2.0 is now available for download.",
          time: "2h ago",
          isNew: false,
        ),
      ],
    );
  }

  Widget _buildNotificationCard(
      {required String icon,
      required String title,
      required String subtitle,
      required String time,
      required bool isNew}) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Colors.white,
      // elevation: isNew ? 2 : 0,
      child: ListTile(
        leading: Container(
          height: 32.sp,
          width: 30.sp,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: const Color(0xffE5E7EB),
            borderRadius: BorderRadius.circular(15),
          ),
          child: SvgPicture.asset(icon),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontFamily: FontConstants.SfProMedium,
                fontSize: 16.sp,
              ),
            ),
            Text(
              time,
              style: TextStyle(
                fontFamily: FontConstants.SfProMedium,
                fontSize: 12.sp,
                color: const Color(0xff6B7280),
              ),
            ),
          ],
        ),
        subtitle: Padding(
          padding: EdgeInsets.only(top: 4.sp),
          child: Text(
            subtitle,
            style: GoogleFonts.poppins(
              fontSize: 14.sp,
              color: const Color(0xff4B5563),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyState(String message) {
    return Center(
        child: Text(message,
            style: GoogleFonts.dmSans(color: Colors.grey, fontSize: 16)));
  }

  Widget _buildMarkAllButton() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff7452FF),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          onPressed: () {},
          child: Text("Mark All as Read",
              style: GoogleFonts.dmSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white)),
        ),
      ),
    );
  }
}

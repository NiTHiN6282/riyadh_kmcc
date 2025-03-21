import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/available_services_widget.dart';
import 'widgets/career_opportunities_widget.dart';
import 'widgets/constitution_committee_widget.dart';
import 'widgets/home_banner_widget.dart';
import 'widgets/join_gold_coin_program_widget.dart';
import 'widgets/latest_from_kmcc_widget.dart';
import 'widgets/our_exclusive_members_widget.dart';
import 'widgets/our_sub_wings_widget.dart';
import 'widgets/recent_travellers_widget.dart';
import 'widgets/social_footer_widget.dart';
import 'widgets/upcoming_event_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20.sp,
              ),
              const BannerWidget(),
              SizedBox(
                height: 20.sp,
              ),
              const UpcomingEventWidget(),
              SizedBox(
                height: 30.sp,
              ),
              const RecentTravellersWidget(),
              SizedBox(
                height: 40.sp,
              ),
              const JoinGoldCoinProgramWidget(),
              SizedBox(
                height: 25.sp,
              ),
              const CareerOpportunitiesWidget(),
              SizedBox(
                height: 37.5.sp,
              ),
              const AvailableServicesWidget(),
              SizedBox(
                height: 28.5.sp,
              ),
              const LatestFromKmccWidget(),
              SizedBox(
                height: 38.5.sp,
              ),
              const OurExclusiveMembersWidget(),
              SizedBox(
                height: 32.15.sp,
              ),
              const OurSubWingsWidget(),
              SizedBox(
                height: 24.sp,
              ),
              const ConstitutionCommitteeWidget(),
              SizedBox(
                height: 40.sp,
              ),
              Divider(
                thickness: 1.sp,
                color: const Color(0xffF0F0F0),
              ),
              SizedBox(
                height: 20.sp,
              ),
              const SocialFooterWidget(),
              SizedBox(
                height: 20.sp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

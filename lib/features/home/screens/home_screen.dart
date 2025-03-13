import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/constants.dart';
import '../../../core/constants/font_constants.dart';
import 'widgets/available_services_widget.dart';
import 'widgets/career_opportunities_widget.dart';
import 'widgets/constitution_committee_widget.dart';
import 'widgets/home_banner_widget.dart';
import 'widgets/join_gold_coin_program_widget.dart';
import 'widgets/latest_from_kmcc_widget.dart';
import 'widgets/our_exclusive_members_widget.dart';
import 'widgets/our_sub_wings_widget.dart';
import 'widgets/recent_travellers_widget.dart';
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
              const Divider(),
              SizedBox(
                height: 20.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CachedNetworkImage(
                    imageUrl:
                        "https://s3-alpha-sig.figma.com/img/8752/f69c/1cbd2a1220ce182389c7efdfe777fb3f?Expires=1742774400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=sdx6S~PgFqGimNqCM3QNf7AHak1QJUqKUMgN0AUNIMI4AjZelo3j-6sOiGnxe~qNHEV2xAlrvV8oaIkVB1JeD9GzGzyDHvb5CJ8oOntyMIgPci0JhxIn0sq9B4SvITWMxm2o6nYdLv3Mieibfb9ZUoWRw9S-Cb3XqDA4sCl18Nd91UdrG0OcQOF63PAj2uq9MZ7CcDkMfui2NIVG5wpYjSv58ISEBt3yAXb2aX~VPINJ631zWzh2tOEskY-9K12PNyqm1AnRA7GPd4tOijLqzyuHd5kwo1VZjXn~WL8hLygMii4LkyynVBvAg7~apN0wz8LgWZHptlr-QDoQ~OlDpQ__",
                    width: 26.06.sp,
                    height: 26.06.sp,
                  ),
                  SizedBox(
                    width: 11.sp,
                  ),
                  CachedNetworkImage(
                    imageUrl:
                        "https://s3-alpha-sig.figma.com/img/4047/442e/f23d060ad539f447dec52efec7786a0d?Expires=1742774400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=j2YByUMv-5I2jI2Dn-NtbfKD7FAsiggeBpYJU5z9CLKUGFTq9zgzrXjhB2sao-AhCn8b2cVACKzxzimo6~KPXeVz~CGNhlUvnHiyy7Rk1v4-97WPO-zuCVoeHLv9dNVlDb3PpVmjWvHuzt-qJMPaP-J7VkZdfX~xSKs1aonCVUAK4l90Hk4imRNnYyFgqqWILf2nhg3t6Y~vGSMkne1cVY0MnldrkOxv2yqsKIdc4gDkF~lEQjtWmFgw9O3~HnxDo8sPyQd2agvklqca12aGNOKjOFzuGKuEFUSOqCroKEIZOPCRqD0G~HHOJd~2I1aZrMr1Xq1VBVCZFBDT70W-lw__",
                    width: 26.06.sp,
                    height: 26.06.sp,
                  ),
                  SizedBox(
                    width: 11.sp,
                  ),
                  CachedNetworkImage(
                    imageUrl:
                        "https://s3-alpha-sig.figma.com/img/7a11/e651/8c1127ec17d8bf036f1dab3466f99621?Expires=1742774400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=txNgpEHx84z-sWOi6q-G8A-rTVkXjvZjknRdFsk7CtRbhiqcxenOLWkAq2G6FKGjJqLnR0CMItjlTbbhQZwfd4Jx7J7MpzM2gLqPfJcxFKJefAjQFGU4-e9tsAHxpHLqFI0ncV8ITaCp~f5fGy-99CtFDOfOnikLrgw35iGx-6HOUYwTowelP3rCoMhDuDvn5pyBg6TBomWn~4DNkpwRiOuYuSN0JGFu~GFggx-7a9obMjnHEgjBnFfxzngr-1UjShC6q1Lea4tVvrV8OqriqE3MG5cGv7Fz0y2NT-qQXp1WBkghFzpi7D7X1YlrkwJNoZIHsA2Jfef0BovjCzggKw__",
                    width: 26.06.sp,
                    height: 26.06.sp,
                  ),
                  SizedBox(
                    width: 11.sp,
                  ),
                  CachedNetworkImage(
                    imageUrl:
                        "https://s3-alpha-sig.figma.com/img/f8af/60c5/5536e2f522e868be06c691395024ebf6?Expires=1742774400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=rouu6rUWqlZ-qleWHOchq6eP~adxeNpUOJBWPnHFcQu3Oi~yP7bncHaCEsoa8kJaDkTLaaIG5n7Z6o-M4xVSlRSTl~IluuHb89LNlRVg1DYLba6-xfQpsAmTUsTVAezeegNJVViOR6KbHKah~9E6k3qesI6vOaFthiS8DefbZFGsgx1~O7F7uwE0nwBagrRK7oyCDBvQxjS8W8eAWPrV4dijKxE7Hn-stcAAFPQ~kqMzZQkiuXArNuJ80upsv1hc5TPuCfK0d0BeFhCCxBc8k9KHBRK~Z1q77Zqz4xlDdflviFfvWl3OedELE4R0ujsSGU8akLPL-xVVLAEND0gTUQ__",
                    width: 26.06.sp,
                    height: 26.06.sp,
                  ),
                  SizedBox(
                    width: 11.sp,
                  ),
                  CachedNetworkImage(
                    imageUrl:
                        "https://s3-alpha-sig.figma.com/img/ec87/9572/2329e3fcf6804406e537ac15cfbf081c?Expires=1742774400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=cZGdidyV4-jANSaR883j13DQPvhqz2ySD6qXFna-3ovzmi46MYnzn1rNsOHIOyHkeHstBDf383zOPwVTTdDWjoeu8QCS4cR2i5aDOFQy2n1KkbBJszaqMKPuvFlYc8ZlYjEB~JBVUE78MwQAed~uO-pOK94FlmAdkbArcxipXcSDozyDKNwApHed78mX53Fh~kUsFjosJY~dZlU-GEAXQQQiQzdOYsKYnTpHmGssl9t9jYCF8GDMkH0ry~xnzYaTUAFhlYLCGbsPld~MDJ9gsMjZmgWNKudVBdTXM7vHRkzJhe1ecJVzVFA35yGkczmWh0P1N0UnrIKSGB4Fu43jAQ__",
                    width: 26.06.sp,
                    height: 26.06.sp,
                  ),
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              Text(
                "© 2025 KMCC All Rights Reserved.",
                style: TextStyle(
                    color: const Color(0xffA6A7AB),
                    fontFamily: FontConstants.SfProRegular,
                    fontSize: 12.sp),
              ),
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

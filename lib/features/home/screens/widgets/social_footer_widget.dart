import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/font_constants.dart';

class SocialFooterWidget extends StatelessWidget {
  const SocialFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/instagram.png",
              width: 26.06.sp,
              height: 26.06.sp,
            ),
            SizedBox(
              width: 11.sp,
            ),
            Image.asset(
              "assets/facebook.png",
              width: 26.06.sp,
              height: 26.06.sp,
            ),
            SizedBox(
              width: 11.sp,
            ),
            Image.asset(
              "assets/tiktok.png",
              width: 26.06.sp,
              height: 26.06.sp,
            ),
            SizedBox(
              width: 11.sp,
            ),
            Image.asset(
              "assets/snapchat.png",
              width: 26.06.sp,
              height: 26.06.sp,
            ),
            SizedBox(
              width: 11.sp,
            ),
            Image.asset(
              "assets/twitter.png",
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
      ],
    );
  }
}

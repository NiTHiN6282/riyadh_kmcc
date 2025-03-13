import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/constants/font_constants.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 376.sp,
      height: 388.sp,
      margin: EdgeInsets.only(
        left: 13.sp,
        right: 13.sp,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.sp),
          image: const DecorationImage(
              image: AssetImage(Constants.firstBanner), fit: BoxFit.cover)),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 134.sp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.sp),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0.05),
                      Colors.black,
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 134.sp,
              child: Padding(
                padding: EdgeInsets.only(bottom: 18.sp, left: 21.96.sp),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Riyadh KMCC Kozhikode District Committee",
                    maxLines: 3,
                    style: TextStyle(
                        fontSize: 28.sp,
                        overflow: TextOverflow.ellipsis,
                        fontFamily: FontConstants.SfProMedium,
                        fontWeight: FontWeight.w500,
                        height: 36 / 28.sp),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

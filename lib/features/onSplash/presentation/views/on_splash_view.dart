import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:walletly/core/utils/app_colors.dart';
import 'package:walletly/core/utils/app_constants.dart';
import 'package:walletly/core/utils/app_text_style.dart';

class OnSplashView extends StatelessWidget {
  const OnSplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            AppConstants.kImageSplash,
            width: double.infinity.w,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 130.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                Text(
                  AppConstants.kFirstTextOnSplash,
                  style: AppTextStyle.font32Weight700,
                ),
                SizedBox(height: 12.h),
                Text(
                  AppConstants.kSecondTextOnSplash,
                  style: AppTextStyle.font20Weight400,
                ),
                SizedBox(height: 90.h),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.w),
            child: Container(
              height: 40.h,
              width: double.infinity.w,
              decoration: BoxDecoration(
                color: AppColors.myPurple,
                borderRadius: BorderRadius.circular(10.sp),
              ),
              child: Center(
                child: Text(
                  AppConstants.kTextButtonOnSplash,
                  style: AppTextStyle.font14Weight500.copyWith(
                    color: AppColors.myWhite,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

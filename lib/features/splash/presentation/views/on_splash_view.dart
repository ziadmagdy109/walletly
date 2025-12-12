import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:walletly/core/utils/app_colors.dart';
import 'package:walletly/core/utils/app_constants.dart';
import 'package:walletly/core/utils/app_text_style.dart';
import 'package:walletly/core/widgets/button_press.dart';

class OnSplashView extends StatelessWidget {
  const OnSplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    style: AppTextStyle.font32Weight700.copyWith(
                      color: AppColors.myBlack,
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    AppConstants.kSecondTextOnSplash,
                    style: AppTextStyle.font20Weight400.copyWith(
                      color: AppColors.myBlack,
                    ),
                  ),
                  SizedBox(height: 90.h),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60.w),
              child: ButtonPress(textButton: AppConstants.kTextButtonOnSplash),
            ),
          ],
        ),
      ),
    );
  }
}

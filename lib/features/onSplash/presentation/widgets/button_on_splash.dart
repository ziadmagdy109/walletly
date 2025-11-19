import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:walletly/core/routing/routes.dart';
import 'package:walletly/core/utils/app_colors.dart';
import 'package:walletly/core/utils/app_constants.dart';
import 'package:walletly/core/utils/app_text_style.dart';

class ButtonOnSplash extends StatelessWidget {
  const ButtonOnSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacementNamed(context, Routes.home);
      },
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
    );
  }
}

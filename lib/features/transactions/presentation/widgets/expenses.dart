import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:walletly/core/utils/app_colors.dart';
import 'package:walletly/core/utils/app_constants.dart';
import 'package:walletly/core/utils/app_text_style.dart';

class Expenses extends StatelessWidget {
  const Expenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 80.h,
        width: 165.w,
        decoration: BoxDecoration(
          color: AppColors.myRed,
          borderRadius: BorderRadius.circular(28.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppConstants.kImageIconExpenses,
              height: 48.h,
              width: 48.w,
            ),
            SizedBox(width: 10.w),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppConstants.kTextExpenses,
                  style: AppTextStyle.font16Weight500.copyWith(
                    color: AppColors.myWhite,
                  ),
                ),
                Text(
                  AppConstants.kExpenses,
                  style: AppTextStyle.font22Weight600.copyWith(
                    color: AppColors.myWhite,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:walletly/core/utils/app_colors.dart';
import 'package:walletly/core/utils/app_constants.dart';
import 'package:walletly/core/utils/app_text_style.dart';

class TotalBalance extends StatelessWidget {
  const TotalBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110.h,
      width: 330.w,
      child: Column(
        children: [
          SvgPicture.asset(
            AppConstants.kImageWallet,
            height: 28.h,
            width: 28.w,
          ),
          Text(
            AppConstants.kTextTotalBalance,
            style: AppTextStyle.font12Weight500,
          ),
          Text(
            AppConstants.kTotalBalance,
            style: AppTextStyle.font40Weight600.copyWith(
              color: AppColors.myBlack,
            ),
          ),
        ],
      ),
    );
  }
}

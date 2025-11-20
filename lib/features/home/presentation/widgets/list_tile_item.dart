import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:walletly/core/utils/app_colors.dart';
import 'package:walletly/core/utils/app_constants.dart';
import 'package:walletly/core/utils/app_text_style.dart';

class ListTileItem extends StatelessWidget {
  const ListTileItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88.h,
      width: double.infinity.w,
      decoration: BoxDecoration(
        color: AppColors.myWhite,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(
            AppConstants.kImageArrowIncome,
            height: 41.h,
            width: 38.w,
          ),
          title: Text(
            AppConstants.kRecentPrice,
            style: AppTextStyle.font22Weight400.copyWith(
              color: AppColors.myBlack,
            ),
          ),
          trailing: Text(
            AppConstants.kRecentTitle,
            style: AppTextStyle.font18Weight400.copyWith(
              color: AppColors.myBlack,
            ),
          ),
        ),
      ),
    );
  }
}

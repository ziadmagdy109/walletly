import 'package:flutter/material.dart';
import 'package:walletly/core/utils/app_colors.dart';
import 'package:walletly/core/utils/app_constants.dart';
import 'package:walletly/core/utils/app_text_style.dart';

class RowRecentAndViewAll extends StatelessWidget {
  const RowRecentAndViewAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppConstants.kRecentTransaction,
          style: AppTextStyle.font14Weight400.copyWith(
            color: AppColors.myBlack,
          ),
        ),
        Text(
          AppConstants.kViewAll,
          style: AppTextStyle.font14Weight400.copyWith(
            color: AppColors.myBlack,
          ),
        ),
      ],
    );
  }
}

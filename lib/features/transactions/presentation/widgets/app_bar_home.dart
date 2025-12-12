import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heroicons/heroicons.dart';
import 'package:walletly/core/utils/app_colors.dart';
import 'package:walletly/core/utils/app_constants.dart';
import 'package:walletly/core/utils/app_text_style.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: HeroIcon(HeroIcons.bellAlert, size: 24.sp),
        ),
        Text(
          AppConstants.kTextDateHome,
          style: AppTextStyle.font14Weight400.copyWith(
            height: 0.8.h,
            color: AppColors.myBlack,
          ),
        ),
      ],
    );
  }
}

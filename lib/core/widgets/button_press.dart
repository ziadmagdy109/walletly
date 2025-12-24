import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:walletly/core/utils/app_colors.dart';
import 'package:walletly/core/utils/app_text_style.dart';

class ButtonPress extends StatelessWidget {
  const ButtonPress({this.ontab, super.key, required this.textButton});
  final String textButton;
  final Function()? ontab;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // on tap custom
      onTap: ontab,
      child: Container(
        height: 40.h,
        width: double.infinity.w,
        decoration: BoxDecoration(
          color: AppColors.myPurple,
          borderRadius: BorderRadius.circular(10.sp),
        ),
        child: Center(
          child: Text(
            textButton,
            style: AppTextStyle.font14Weight500.copyWith(
              color: AppColors.myWhite,
            ),
          ),
        ),
      ),
    );
  }
}

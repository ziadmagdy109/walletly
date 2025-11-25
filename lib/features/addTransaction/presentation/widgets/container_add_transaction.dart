import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:walletly/core/utils/app_colors.dart';
import 'package:walletly/features/addTransaction/presentation/widgets/category_dropdown.dart';
import 'package:walletly/features/addTransaction/presentation/widgets/describe_dropdown.dart';

class ContainerAddTransaction extends StatelessWidget {
  const ContainerAddTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.h,
      width: 375.w,
      decoration: BoxDecoration(
        color: AppColors.myWhite,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50.r),
          topLeft: Radius.circular(50.r),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 50.h),
            CategoryDropdown(),
            SizedBox(height: 30.h),
            DescriptionDropdown(),
          ],
        ),
      ),
    );
  }
}

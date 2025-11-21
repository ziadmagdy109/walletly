import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:walletly/core/utils/app_colors.dart';
import 'package:walletly/core/utils/app_lists.dart';
import 'package:walletly/core/utils/app_text_style.dart';

class ListViewBuilderItem extends StatelessWidget {
  const ListViewBuilderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: AppLists.images.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 12.h),
          child: Container(
            height: 88.h,
            width: double.infinity.w,
            decoration: BoxDecoration(
              color: AppColors.myWhite,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Center(
              child: ListTile(
                leading: SvgPicture.asset(
                  AppLists.images[index],
                  height: 41.h,
                  width: 38.w,
                ),
                title: Text(
                  AppLists.recentPrice[index],
                  style: AppTextStyle.font22Weight400.copyWith(
                    color: AppColors.myBlack,
                  ),
                ),
                trailing: Text(
                  AppLists.titles[index],
                  style: AppTextStyle.font18Weight400.copyWith(
                    color: AppColors.myBlack,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

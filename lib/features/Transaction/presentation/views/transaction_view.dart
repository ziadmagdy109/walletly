import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:walletly/core/utils/app_colors.dart';
import 'package:walletly/core/utils/app_constants.dart';
import 'package:walletly/core/utils/app_lists.dart';
import 'package:walletly/core/utils/app_text_style.dart';

class TransactionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppConstants.kTransactions),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.only(top: 25.h),
          itemCount: AppLists.titles.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 25.h),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  height: 90.h,
                  width: double.infinity.w,
                  decoration: BoxDecoration(
                    color: AppColors.myWhite,
                    borderRadius: BorderRadius.circular(24.r),
                  ),
                  child: Center(
                    child: ListTile(
                      title: Text(
                        AppLists.titles[index],
                        style: AppTextStyle.font16Weight500.copyWith(
                          color: AppColors.myBlack,
                        ),
                      ),
                      subtitle: Text(
                        AppLists.subTitles[index],
                        style: AppTextStyle.font13Weight500.copyWith(
                          color: AppColors.myBlack,
                        ),
                      ),
                      trailing: Text(
                        AppLists.price[index],
                        style: AppTextStyle.font16Weight600.copyWith(
                          color: AppLists.colorPrice[index],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

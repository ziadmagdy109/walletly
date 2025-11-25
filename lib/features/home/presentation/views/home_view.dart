import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:walletly/features/home/presentation/widgets/app_bar_home.dart';
import 'package:walletly/features/home/presentation/widgets/list_view_builder_item.dart';
import 'package:walletly/features/home/presentation/widgets/row_income_and_expenses.dart';
import 'package:walletly/features/home/presentation/widgets/row_recent_and_view_all.dart';
import 'package:walletly/features/home/presentation/widgets/total_balance.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.sp),
        child: Column(
          children: [
            SizedBox(height: 40.h),
            AppBarHome(),
            SizedBox(height: 28.h),
            TotalBalance(),
            SizedBox(height: 20.h),
            RowIncomeAndExpenses(),
            SizedBox(height: 40.h),
            Column(
              children: [
                RowRecentAndViewAll(),
                SizedBox(height: 15.h),
                ListViewBuilderItem(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

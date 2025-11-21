import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:walletly/core/utils/app_colors.dart';
import 'package:walletly/core/utils/app_constants.dart';
import 'package:walletly/core/utils/app_text_style.dart';
import 'package:walletly/features/Transaction/presentation/views/transaction_view.dart';
import 'package:walletly/features/addTransaction/presentation/views/add_transaction.dart';
import 'package:walletly/features/home/presentation/cubit/navigation_cubit.dart';
import 'package:walletly/features/home/presentation/views/home_view.dart';

class MainLayout extends StatelessWidget {
  final int currentIndex = 0;
  final List<Widget> screens = [
    HomeView(),
    TransactionView(),
    AddTransaction(),
    HomeView(),
    HomeView(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationCubit(),
      child: BlocBuilder<NavigationCubit, int>(
        builder: (context, currentIndex) {
          return Scaffold(
            body: screens[currentIndex],
            //
            bottomNavigationBar: BottomAppBar(
              color: AppColors.myWhite,
              shape: CircularNotchedRectangle(),
              notchMargin: 16,
              child: Container(
                height: 75.h,
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // LEFT SIDE
                    Row(
                      children: [
                        bottomItem(
                          image: AppConstants.kIconHome,
                          label: AppConstants.kTextHome,
                          index: 0,
                          currentIndex: currentIndex,
                          context: context,
                        ),
                        SizedBox(width: 25.w),
                        bottomItem(
                          image: AppConstants.kImageTransaction,
                          label: AppConstants.kTransaction,
                          index: 1,
                          currentIndex: currentIndex,
                          context: context,
                        ),
                      ],
                    ),
                    // RIGHT SIDE
                    Row(
                      children: [
                        bottomItem(
                          image: AppConstants.kImageStatitics,
                          label: AppConstants.kStatitics,
                          index: 3,
                          currentIndex: currentIndex,
                          context: context,
                        ),
                        SizedBox(width: 25.w),
                        bottomItem(
                          image: AppConstants.kImageProfile,
                          label: AppConstants.kProfile,
                          index: 4,
                          currentIndex: currentIndex,
                          context: context,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            //
            floatingActionButton: FloatingActionButton(
              backgroundColor: AppColors.myPurple,
              shape: CircleBorder(),
              onPressed: () {
                context.read<NavigationCubit>().changeTab(2);
              },
              child: Icon(Icons.add, size: 30.sp, color: AppColors.myWhite),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
          );
        },
      ),
    );
  }
}

// BottomItem
Widget bottomItem({
  required String image,
  required String label,
  required int index,
  required int currentIndex,
  required BuildContext context,
}) {
  final bool isSelected = index == currentIndex;

  return GestureDetector(
    onTap: () {
      context.read<NavigationCubit>().changeTab(index);
    },
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          image,
          color: isSelected ? Colors.purple : Colors.grey,
        ),
        SizedBox(height: 4.h),
        Text(
          label,
          style: AppTextStyle.font10Weight500.copyWith(
            color: isSelected ? AppColors.myPurple : AppColors.myGrey,
          ),
        ),
      ],
    ),
  );
}

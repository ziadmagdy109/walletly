import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:walletly/core/utils/app_colors.dart';
import 'package:walletly/features/transactions/logic/cubit/add_transaction_cubit.dart';

class CategoryDropdown extends StatelessWidget {
  final List<String> items = const ["Income", "Expense"];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddTransactionCubit, AddTransactionState>(
      builder: (context, state) {
        return DropdownButtonHideUnderline(
          child: DropdownButton2(
            isExpanded: true,
            hint: const Text("Category"),
            value: state.category,
            items: items
                .map((item) => DropdownMenuItem(value: item, child: Text(item)))
                .toList(),
            onChanged: (value) {
              context.read<AddTransactionCubit>().changeCategory(value!);
            },
            //
            buttonStyleData: ButtonStyleData(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                border: Border.all(color: AppColors.myGrey, width: 1.w),
                color: Colors.white,
              ),
            ),
            //
            iconStyleData: const IconStyleData(
              icon: Icon(Icons.keyboard_arrow_down, color: AppColors.myBlack),
            ),
          ),
        );
      },
    );
  }
}

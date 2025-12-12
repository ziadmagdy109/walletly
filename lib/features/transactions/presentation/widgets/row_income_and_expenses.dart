import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:walletly/features/transactions/presentation/widgets/expenses.dart';
import 'package:walletly/features/transactions/presentation/widgets/in_come.dart';

class RowIncomeAndExpenses extends StatelessWidget {
  const RowIncomeAndExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InCome(),
        SizedBox(width: 25.w),
        Expenses(),
      ],
    );
  }
}

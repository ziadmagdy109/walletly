import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:walletly/core/utils/app_constants.dart';
import 'package:walletly/core/utils/app_text_style.dart';
import 'package:walletly/core/widgets/button_press.dart';
import 'package:walletly/features/transactions/logic/cubit/add_transaction_cubit.dart';
import 'package:walletly/features/transactions/presentation/widgets/container_add_transaction.dart';

class AddTransaction extends StatelessWidget {
  const AddTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddTransactionCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppConstants.kAddTransactions),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60.h),
                Text("How much?", style: AppTextStyle.font18Weight600),
                SizedBox(height: 10.h),
                Text(r"$ 55698", style: AppTextStyle.font40Weight600),
                SizedBox(height: 10.h),
                ContainerAddTransaction(),
                SizedBox(height: 80.h),
                ButtonPress(textButton: AppConstants.kContinue),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

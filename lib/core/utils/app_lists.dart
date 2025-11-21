import 'package:flutter/widgets.dart';
import 'package:walletly/core/utils/app_colors.dart';
import 'package:walletly/core/utils/app_constants.dart';

class AppLists {
  static const List<String> titles = [
    "Shopping",
    "Food",
    "Salary",
    "Subscription",
    "Fuel",
    "Cinema",
  ];
  static const List<String> subTitles = [
    "Buy some grocery",
    "Arabian Hut",
    "Salary for  August",
    "Disney+ Annual..",
    "kozhikode",
    "lulu mall",
  ];
  static const List<String> price = [
    "-5120",
    "-532",
    "+5000",
    "-1180",
    "-1032",
    "-532",
  ];
  static const List<Color> colorPrice = [
    AppColors.myRed,
    AppColors.myRed,
    AppColors.myGreen,
    AppColors.myRed,
    AppColors.myRed,
    AppColors.myRed,
  ];
  //
  static const List<String> images = [
    AppConstants.kImageArrowIncome,
    AppConstants.kImageArrowExpenses,
    AppConstants.kImageArrowIncome,
  ];
  static const List<String> recentPrice = ["15000", "5400", "670"];
}

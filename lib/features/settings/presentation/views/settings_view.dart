import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:walletly/core/utils/app_colors.dart';
import 'package:walletly/core/utils/app_constants.dart';
import 'package:walletly/core/utils/app_lists.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppConstants.kSetting), centerTitle: true),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.w),
        height: 180.h,
        width: double.infinity.w,
        decoration: BoxDecoration(
          color: AppColors.myWhite,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(24.r),
            topLeft: Radius.circular(24.r),
          ),
        ),
        child: ListView.builder(
          itemCount: AppLists.textTitle.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTileItem(
                  iconSetting: AppLists.iconSettings[index],
                  texttitle: AppLists.textTitle[index],
                  icon: index == 1 ? Icons.add : null,
                ),
                if (index != AppLists.textTitle.length - 1)
                  Divider(thickness: 0.3),
              ],
            );
          },
        ),
      ),
    );
  }
}

class ListTileItem extends StatelessWidget {
  const ListTileItem({
    super.key,
    required this.iconSetting,
    required this.texttitle,
    this.icon,
  });
  final String iconSetting;
  final String texttitle;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(iconSetting, height: 28.h, width: 28.w),
      title: Text(texttitle),
      trailing: Icon(icon),
    );
  }
}

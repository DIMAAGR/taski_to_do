import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taski_to_do/src/features/shared/constants/app_assets.dart';
import 'package:taski_to_do/src/features/shared/styles/text_style.dart';

class TaskiAppBar extends StatelessWidget implements PreferredSizeWidget {
  // final UserModel userModel;
  const TaskiAppBar({
    super.key,
    /* required this.userModel */
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: SvgPicture.asset(AppAssets.logo),
      centerTitle: false,
      leading: const SizedBox(),
      leadingWidth: 0,
      actions: [
        Row(children: [
          Text('John', style: AppTextStyle.appbarUserTitle),
          const SizedBox(width: 16),
          const CircleAvatar(backgroundImage: AssetImage(AppAssets.user)),
          const SizedBox(width: 16),
        ]),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}

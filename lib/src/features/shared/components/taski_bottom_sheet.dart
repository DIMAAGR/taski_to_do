import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:taski_to_do/src/core/themes/theme.dart';
import 'package:taski_to_do/src/features/shared/constants/app_assets.dart';
import 'package:taski_to_do/src/features/shared/styles/text_style.dart';
import 'package:taski_to_do/src/features/shared/viewmodel/taski_bottom_sheet_view_model.dart';

class TaskiBottomSheet extends StatelessWidget {
  const TaskiBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final TaskiBottomSheetViewModel controller = GetIt.I.get();

    return Container(
      height: 104,
      decoration: BoxDecoration(
        color: AppTheme.colors.backgroundColor,
        border: Border(
          top: BorderSide(
            width: 2,
            color: AppTheme.colors.paleWhite,
          ),
        ),
      ),
      child: ValueListenableBuilder(
          valueListenable: controller.selectedPage,
          builder: (context, page, _) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _BottomSheetPageButton(
                  onTap: () {
                    controller.changePage(0);
                  },
                  title: 'Todo',
                  iconPath: AppAssets.todoIcon,
                  isSelectedPage: page == 0,
                ),
                _BottomSheetPageButton(
                  onTap: () {
                    controller.changePage(1);
                  },
                  title: 'Create',
                  iconPath: AppAssets.addIcon,
                  isSelectedPage: page == 1,
                ),
                _BottomSheetPageButton(
                  onTap: () {
                    controller.changePage(2);
                  },
                  title: 'Search',
                  iconPath: AppAssets.searchIcon,
                  isSelectedPage: page == 2,
                ),
                _BottomSheetPageButton(
                  onTap: () {
                    controller.changePage(3);
                  },
                  title: 'Done',
                  iconPath: AppAssets.completedIcon,
                  isSelectedPage: page == 3,
                ),
              ],
            );
          }),
    );
  }
}

class _BottomSheetPageButton extends StatelessWidget {
  final void Function() onTap;
  final String title;
  final String iconPath;
  final bool isSelectedPage;

  const _BottomSheetPageButton({
    super.key,
    required this.onTap,
    required this.title,
    required this.iconPath,
    required this.isSelectedPage,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            iconPath,
            color: isSelectedPage ? AppTheme.colors.blue : AppTheme.colors.mutedAzure,
            width: 24,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: AppTextStyle.dropdownButtonTitle.copyWith(
              color: isSelectedPage ? AppTheme.colors.blue : AppTheme.colors.mutedAzure,
            ),
          ),
        ],
      ),
    );
  }
}

// class _PagesButton extends StatelessWidget {
//   final void Function(Pages) onTap;
//   final String title;
//   final AppIconData icon;
//   final Pages actualPage;
//   final Pages page;

//   const _PagesButton({
//     required this.onTap,
//     required this.title,
//     required this.icon,
//     required this.actualPage,
//     required this.page,
//   });

//   @override
//   Widget build(BuildContext context) {
    // Color foregroundColor = AppColors.grey;

    // if (page == actualPage) foregroundColor = AppColors.primary;

    // return InkWell(
    //   onTap: () => onTap(page),
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       AppIcon(icon, color: foregroundColor, size: 32),
    //       Text(
    //         title,
    //         style: AppTextStyle.inferiorMenuTileTitle.copyWith(
    //           color: foregroundColor,
    //         ),
    //       ),
    //     ],
    //   ),
    // );
//   }
// }

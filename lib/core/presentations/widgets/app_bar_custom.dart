import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../constants/app_colors.dart';
import '../../constants/ui_constants.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final bool? centerTile;
  final bool? isTransparent;
  final List<Widget>? actions;
  const AppBarCustom(
      {super.key,
      this.actions,
      this.title,
      this.centerTile = false,
      this.isTransparent});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: isTransparent != null || isTransparent == true
          ? Colors.transparent
          : AppColors.white,
      // backgroundColor: Colors.red,

      leading: IconButton(
        style: ButtonStyle(
            foregroundColor: WidgetStatePropertyAll(
                isTransparent != null || isTransparent == true
                    ? AppColors.white
                    : AppColors.black),
            backgroundColor: WidgetStatePropertyAll(
                isTransparent != null || isTransparent == true
                    ? Colors.transparent
                    : AppColors.grayAccent),
            iconSize: const WidgetStatePropertyAll(20),
            shape: const WidgetStatePropertyAll(CircleBorder()),
            padding: const WidgetStatePropertyAll(EdgeInsets.zero),
            fixedSize: const WidgetStatePropertyAll(Size.square(16))),
        focusColor: Colors.transparent,
        icon: const Icon(
          Icons.fork_right_outlined,
          weight: 700,
        ), // Change this icon to whatever you need
        onPressed: () {
          // Define your action here
          context.pop();
        },
      ),
      centerTitle: centerTile,
      title: title,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: UIConstants.screenPadding),
          child: Row(
            children: actions
                    ?.map((action) => Padding(
                          padding: const EdgeInsets.only(
                              left: UIConstants.minPadding),
                          child: action,
                        ))
                    .toList() ??
                [],
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

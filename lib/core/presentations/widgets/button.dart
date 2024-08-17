import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../constants/app_colors.dart';
import '../../constants/ui_constants.dart';
import '../ui/spacer.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    this.label,
    this.isFilled = false,
    this.isLoading = false,
    this.width,
    this.height = 48,
    this.prefixWidget,
    this.suffixWidget,
    this.borderColor,
    this.textColor = AppColors.black,
    this.isExpanded = true,
    this.alignment,
    this.handleTap,
    this.fillColor = AppColors.primary,
    this.fontSize,
    this.splashColor,
    this.progressColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.isButtonDisabled,
    this.isRounded,
  });
  final double? width;
  final bool isExpanded;
  final double? height;
  final bool? isRounded;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final Color? textColor;
  final bool isFilled;
  final Color? borderColor;
  final Color? splashColor;
  final bool? isLoading;
  final Widget? label;
  final Color? progressColor;
  final MainAxisAlignment? alignment;
  final Color? fillColor;
  final double? fontSize;
  final double? horizontalPadding;
  final double? verticalPadding;
  final bool? isButtonDisabled;
  final void Function()? handleTap;

  @override
  Widget build(BuildContext context) {
    Color? backgroundColor = (isButtonDisabled != null && isButtonDisabled!)
        ? AppColors.whiteShade
        : isFilled == true
            ? fillColor
            : null;
    return ClipRRect(
      borderRadius: BorderRadius.circular((isRounded ?? false) && height != null
          ? height! / 2
          : UIConstants.minBorderRadius),
      child: Material(
        color: backgroundColor,
        child: InkWell(
          highlightColor: AppColors.white.withOpacity(0.2),
          splashColor: splashColor ?? AppColors.white.withOpacity(0.2),
          onTap: (isButtonDisabled != null && isButtonDisabled!)
              ? null
              : handleTap,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              border: isFilled == false
                  ? Border.all(
                      color: borderColor != null
                          ? borderColor!
                          : Theme.of(context).colorScheme.primary,
                    )
                  : null,
              borderRadius: BorderRadius.circular(UIConstants.minBorderRadius),
            ),
            child: DefaultTextStyle(
              style: TextStyle(color: textColor),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: horizontalPadding ?? UIConstants.padding,
                    vertical: verticalPadding ?? 0),
                child: Row(
                  mainAxisSize:
                      isExpanded ? MainAxisSize.max : MainAxisSize.min,
                  mainAxisAlignment: alignment ?? MainAxisAlignment.start,
                  children: [
                    if (prefixWidget != null) prefixWidget!,
                    if (prefixWidget != null) Gapper.hxmGap(),
                    isLoading != null && !isLoading!
                        ? Expanded(
                            child: Center(child: label ?? const SizedBox()))
                        : Expanded(
                            child: Center(
                              child: LoadingAnimationWidget.prograssiveDots(
                                color: progressColor ?? Colors.white,
                                size: 50,
                              ),
                            ),
                          ),
                    if (suffixWidget != null) Gapper.hxmGap(),
                    if (suffixWidget != null) suffixWidget!
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../constants/ui_constants.dart';

class Gapper {
  static Widget screenPadding({required Widget child}) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: UIConstants.screenPadding),
      child: child,
    );
  }

  static Widget cardPadding({required Widget child}) {
    return Padding(
      padding: const EdgeInsets.all(UIConstants.screenPadding),
      child: child,
    );
  }

  static Widget cardMinPadding({required Widget child}) {
    return Padding(
      padding: const EdgeInsets.all(UIConstants.minPadding),
      child: child,
    );
  }

  static SizedBox hmGap() {
    return const SizedBox(
      width: UIConstants.minPadding,
    );
  }

  static SizedBox hxmGap() {
    return const SizedBox(
      width: UIConstants.xMinPadding,
    );
  }

  static SizedBox h2xmGap() {
    return const SizedBox(
      width: UIConstants.x2MinPadding,
    );
  }

  static SizedBox hGap() {
    return const SizedBox(
      width: UIConstants.padding,
    );
  }

  static SizedBox hmxGap() {
    return const SizedBox(
      width: UIConstants.maxPadding,
    );
  }

  static SizedBox vmGap() {
    return const SizedBox(
      height: UIConstants.minPadding,
    );
  }

  static SizedBox vxmGap() {
    return const SizedBox(
      height: UIConstants.xMinPadding,
    );
  }

  static SizedBox v2xmGap() {
    return const SizedBox(
      height: UIConstants.x2MinPadding,
    );
  }

  static SizedBox vGap() {
    return const SizedBox(
      height: UIConstants.padding,
    );
  }

  static SizedBox vmxGap() {
    return const SizedBox(
      height: UIConstants.maxPadding,
    );
  }

  static SizedBox labelBottom() {
    return const SizedBox(
      height: UIConstants.labelBottom,
    );
  }

  static SizedBox inputSpacerB() {
    return const SizedBox(
      height: UIConstants.inputSpacerB,
    );
  }

  static SizedBox bigVSpacer() {
    return const SizedBox(
      height: UIConstants.bigVSpacer,
    );
  }
}

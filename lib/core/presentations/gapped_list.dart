import 'package:flutter/material.dart';

class GappedList extends Flex {
  GappedList({
    super.key,
    required super.direction,
    double gap = 0.0,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,
    List<Widget> children = const <Widget>[],
  }) : super(
            // children: children.map((child) {
            //   if (gap == 0 || children.last == child) {
            //     return child;
            //   }
            //   return Row(children: [
            //     child,
            //     direction == Axis.horizontal
            //         ? SizedBox(
            //             width: gap,
            //           )
            //         : SizedBox(
            //             height: gap,
            //           )
            //   ]);
            // }).toList(),
            children: _addGap(children, gap, direction));

  static List<Widget> _addGap(
      List<Widget> children, double gap, Axis direction) {
    if (gap <= 0) return children;

    final List<Widget> spacedChildren = [];
    for (var child in children) {
      spacedChildren.addAll([
        child,
        direction == Axis.horizontal
            ? SizedBox(
                width: gap,
              )
            : SizedBox(
                height: gap,
              )
      ]);
    }
    return spacedChildren;
  }
}

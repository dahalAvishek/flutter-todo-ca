import 'package:flutter/material.dart';

import '../../../core/presentations/ui/spacer.dart';

class ElapsedTimeWidget extends StatelessWidget {
  final String duration;
  const ElapsedTimeWidget({super.key, required this.duration});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.timelapse,
          size: 14,
        ),
        Gapper.hxmGap(),
        Text(
          duration,
        ),
      ],
    );
  }
}

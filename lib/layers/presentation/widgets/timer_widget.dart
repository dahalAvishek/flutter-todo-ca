import 'dart:async';

import 'package:flutter/material.dart';

import '../../../core/presentations/ui/spacer.dart';

class TimerWidget extends StatefulWidget {
  final DateTime? startTime;

  const TimerWidget({super.key, this.startTime});

  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  late Timer _timer;
  late Duration _elapsed;

  @override
  void initState() {
    super.initState();
    _elapsed = Duration.zero;
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final now = DateTime.now();
      if (widget.startTime != null) {
        setState(() {
          _elapsed = now.difference(widget.startTime!);
        });
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final hours = _elapsed.inHours.toString().padLeft(2, '0');
    final minutes = (_elapsed.inMinutes % 60).toString().padLeft(2, '0');
    final seconds = (_elapsed.inSeconds % 60).toString().padLeft(2, '0');

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.timer_outlined,
          size: 14,
        ),
        Gapper.hxmGap(),
        Text(
          '$hours:$minutes:$seconds',
        ),
      ],
    );
  }
}

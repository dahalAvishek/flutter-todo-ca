import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_todo/core/helpers/extensions/date_extensions.dart';
import 'package:localstorage/localstorage.dart';

import '../../../core/constants/ui_constants.dart';
import '../../../core/presentations/ui/spacer.dart';

class HistoryCard extends StatelessWidget {
  final String content;
  final String completedAt;
  final String taskId;
  const HistoryCard(
      {super.key,
      required this.content,
      required this.completedAt,
      required this.taskId});

  @override
  Widget build(BuildContext context) {
    final taskDuration = localStorage.getItem("$taskId-duration");
    log("$taskId${localStorage.getItem("$taskId-duration")}");

    return Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: const BorderRadius.all(
                Radius.circular(UIConstants.borderRadius))),
        child: Gapper.cardMinPadding(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              content ?? '',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Gapper.vmGap(),
            Row(
              children: [
                const Text('Task duration: '),
                Text(taskDuration ?? ''),
              ],
            ),
            Gapper.vmGap(),
            Row(
              children: [
                const Text('Created at: '),
                Text(DateTime.parse(completedAt).toFullDateString() ?? ''),
              ],
            ),
          ],
        )));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_todo/core/helpers/extensions/date_extensions.dart';

import '../../../core/constants/ui_constants.dart';
import '../../../core/presentations/ui/spacer.dart';
import '../../domain/entities/tasks_entity.dart';

class TaskCard extends StatelessWidget {
  final TaskEntity task;
  const TaskCard({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 125,
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 4),
            ),
          ],
          borderRadius: const BorderRadius.all(
              Radius.circular(UIConstants.borderRadius))),
      child: Gapper.cardMinPadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              task.content ?? '',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Gapper.vmGap(),
            Text(
              task.description ?? '',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
            ),
            Gapper.vGap(),
            const Divider(),
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Icon(
                      Icons.comment_outlined,
                      size: 14,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                  Gapper.h2xmGap(),
                  Text(
                    "2",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSecondary),
                  ),
                  Gapper.h2xmGap(),
                  const VerticalDivider(),
                  Gapper.h2xmGap(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 0),
                    child: Icon(
                      Icons.edit_calendar_sharp,
                      size: 13,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                  Gapper.h2xmGap(),
                  Text(
                    DateTime.parse(task.createdAt!).toFullDateString() ?? '',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSecondary),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

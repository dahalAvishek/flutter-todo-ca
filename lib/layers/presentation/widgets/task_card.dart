import 'package:flutter/material.dart';
import 'package:flutter_todo/core/helpers/extensions/date_extensions.dart';

import '../../../core/constants/ui_constants.dart';
import '../../../core/presentations/ui/spacer.dart';
import '../../../core/presentations/widgets/button.dart';
import '../../domain/entities/tasks_entity.dart';
import 'comments_section.dart';

class TaskCard extends StatefulWidget {
  final TaskEntity task;
  final double? elevation;
  const TaskCard({
    super.key,
    this.elevation,
    required this.task,
  });

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  bool showComments = false;
  final TextEditingController _commentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          borderRadius:
              const BorderRadius.all(Radius.circular(UIConstants.borderRadius)),
          elevation: widget.elevation ?? 4,
          shadowColor: Theme.of(context).colorScheme.onPrimary.withOpacity(0.3),
          child: Container(
            // height: 125,

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
                    widget.task.content ?? '',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Gapper.vmGap(),
                  Text(
                    widget.task.description ?? '',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSecondary),
                  ),
                  Gapper.vGap(),
                  const Divider(),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
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
                              widget.task.commentCount.toString() ?? '',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondary),
                            ),
                          ],
                        ),
                        Gapper.h2xmGap(),
                        // const VerticalDivider(),
                        Button(
                          height: 20,
                          handleTap: () => setState(() {
                            showComments = !showComments;
                          }),
                          alignment: MainAxisAlignment.end,
                          suffixWidget: Icon(
                            showComments
                                ? Icons.keyboard_arrow_up_outlined
                                : Icons.keyboard_arrow_down_outlined,
                            color: Theme.of(context)
                                .colorScheme
                                .onSecondary
                                .withOpacity(0.5),
                          ),
                          width: 100,
                          borderColor: Colors.transparent,
                        ),

                        Gapper.h2xmGap(),
                        Row(
                          children: [
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
                              DateTime.parse(widget.task.createdAt!)
                                      .toFullDateString() ??
                                  '',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondary),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  widget.task.id != null
                      ? CommentsSection(
                          widget: widget,
                          commentController: _commentController,
                          showComments: showComments,
                        )
                      : const SizedBox()
                ],
              ),
            ),
          ),
        ),
        Gapper.vGap()
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/core/helpers/extensions/date_extensions.dart';
import 'package:flutter_todo/core/presentations/widgets/add_on_input_field.dart';

import '../../../core/constants/ui_constants.dart';
import '../../../core/presentations/ui/spacer.dart';
import '../../../core/presentations/widgets/button.dart';
import '../../../utils/dependencies_injection.dart';
import '../../domain/entities/tasks_entity.dart';
import '../blocs/get_comments/get_comments_bloc.dart';

class TaskCard extends StatefulWidget {
  final TaskEntity task;
  const TaskCard({super.key, required this.task});

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  bool showComments = false;
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
              widget.task.content ?? '',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Gapper.vmGap(),
            Text(
              widget.task.description ?? '',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
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
                        "2",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.onSecondary),
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
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.onSecondary),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            showComments && widget.task.id != null
                ? BlocProvider(
                    create: (context) => GetCommentsBloc(sl())
                      ..add(GetCommentsEvent.attempt(taskId: widget.task.id!)),
                    child: BlocBuilder<GetCommentsBloc, GetCommentsState>(
                      builder: (context, state) {
                        return state.mapOrNull(
                              success: (value) => ConstrainedBox(
                                constraints: const BoxConstraints(
                                  maxHeight: 200,
                                ),
                                child: SingleChildScrollView(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Divider(),
                                    if (widget.task.id != null)
                                      ...value.comments?.comments
                                              ?.map((comment) => Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Gapper.vxmGap(),
                                                      Text(comment.content ??
                                                          ""),
                                                    ],
                                                  )) ??
                                          [],
                                    Gapper.vxmGap(),
                                    AddOnInputField(
                                      verticalTextPadding: 8,
                                      suffixWidget: InkWell(
                                        onTap: () {},
                                        child: Icon(
                                          Icons.send,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary
                                              .withOpacity(0.5),
                                        ),
                                      ),
                                      borderColor:
                                          Theme.of(context).colorScheme.outline,
                                    )
                                  ],
                                )),
                              ),
                              loading: (value) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Divider(),
                                  Gapper.vxmGap(),
                                  const Text("Loading...")
                                ],
                              ),
                            ) ??
                            const SizedBox();
                      },
                    ),
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}

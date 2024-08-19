import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/core/helpers/extensions/date_extensions.dart';
import 'package:flutter_todo/layers/domain/usecases/get_tasks.dart';

import '../../../bootstrap/domain/entities/section_entity.dart';
import '../../../core/constants/ui_constants.dart';
import '../../../core/presentations/ui/spacer.dart';
import '../../../core/presentations/widgets/button.dart';
import '../../../utils/dependencies_injection.dart';
import '../../domain/entities/tasks_entity.dart';
import '../../domain/usecases/move_task.dart';
import '../blocs/edit_task/edit_task_bloc.dart';
import '../blocs/get_done/get_done_bloc.dart';
import '../blocs/get_in_progress/get_in_progress_bloc.dart';
import '../blocs/get_task/get_task_bloc.dart';
import '../blocs/get_todo/get_todo_bloc.dart';
import '../blocs/move_task/move_task_bloc.dart';
import 'add_task_dialog.dart';
import 'comments_section.dart';

class TaskCard extends StatefulWidget {
  final TaskEntity task;
  final String sectionId;
  final double? elevation;
  final List<SectionEntity> sections;
  final List<DropdownMenuItem<Object?>>? items;
  const TaskCard({
    super.key,
    this.items,
    required this.sections,
    required this.sectionId,
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
    return BlocProvider(
      create: (context) => GetTaskBloc(sl()),
      child: MultiBlocListener(
        listeners: [
          BlocListener<MoveTaskBloc, MoveTaskState>(
            listener: (context, state) {
              state.mapOrNull(success: (value) {
                context.read<GetTodoBloc>().add(GetTodoEvent.attempt(
                    GetTasksParams(sectionId: widget.sectionId)));
                context.read<GetInProgressBloc>().add(
                    GetInProgressEvent.attempt(
                        GetTasksParams(sectionId: widget.sectionId)));
                context.read<GetDoneBloc>().add(GetDoneEvent.attempt(
                    GetTasksParams(sectionId: widget.sectionId)));
              });
            },
          ),
          BlocListener<EditTaskBloc, EditTaskState>(
            listener: (context, state) {
              state.mapOrNull(success: (value) {
                context.read<GetTodoBloc>().add(GetTodoEvent.attempt(
                    GetTasksParams(sectionId: widget.sectionId)));
                context.read<GetInProgressBloc>().add(
                    GetInProgressEvent.attempt(
                        GetTasksParams(sectionId: widget.sectionId)));
                context.read<GetDoneBloc>().add(GetDoneEvent.attempt(
                    GetTasksParams(sectionId: widget.sectionId)));
              });
            },
          ),
        ],
        child: Column(
          children: [
            Material(
              borderRadius: const BorderRadius.all(
                  Radius.circular(UIConstants.borderRadius)),
              elevation: widget.elevation ?? 4,
              shadowColor:
                  Theme.of(context).colorScheme.onPrimary.withOpacity(0.3),
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
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              widget.task.content ?? '',
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                          ),
                          Row(
                            children: [
                              InkWell(
                                  onTap: () {
                                    if (widget.task.id != null) {
                                      showDialog<String>(
                                        context: context,
                                        builder: (context) => BlocProvider(
                                          create: (context) => GetTaskBloc(sl())
                                            ..add(GetTaskEvent.attempt(
                                                taskId: widget.task.id!)),
                                          child: BlocBuilder<GetTaskBloc,
                                              GetTaskState>(
                                            builder: (context, state) {
                                              return state.mapOrNull(
                                                    success: (taskval) {
                                                      return AddTaskDialog(
                                                        description: taskval
                                                            .task.description,
                                                        name: taskval
                                                            .task.content,
                                                        taskId: widget.task.id,
                                                      );
                                                    },
                                                    loading: (value) =>
                                                        AddTaskDialog(
                                                      taskId: widget.task.id,
                                                    ),
                                                  ) ??
                                                  const SizedBox();
                                            },
                                          ),
                                        ),
                                      );
                                    }
                                  },
                                  child: const Icon(
                                    Icons.edit_outlined,
                                    size: 16,
                                  )),
                              Gapper.hGap(),
                              DropdownButtonHideUnderline(
                                child: DropdownButton2(
                                    isDense: true,
                                    isExpanded: false,
                                    customButton: const Icon(Icons.more_horiz),
                                    dropdownStyleData: DropdownStyleData(
                                      width: 160,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 6),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      offset: const Offset(-125, -4),
                                    ),
                                    // icon:
                                    items: widget.sections
                                            .map((section) =>
                                                DropdownMenuItem<SectionEntity>(
                                                  value: section,
                                                  onTap: () {
                                                    if (widget.task.id !=
                                                            null &&
                                                        section.id != null) {
                                                      context
                                                          .read<MoveTaskBloc>()
                                                          .add(MoveTaskEvent.attempt(
                                                              oldSectionId:
                                                                  section.id,
                                                              params: MoveTasksParams(
                                                                  id: widget
                                                                      .task.id!,
                                                                  sectionId:
                                                                      section
                                                                          .id!)));
                                                    }
                                                  },
                                                  child: Text(
                                                      "To ${section.name}"),
                                                ))
                                            .toList() ??
                                        [],
                                    onChanged: (value) {}),
                              )
                            ],
                          ),

                          // InkWell(
                          //     onTap: () {
                          //       showModalBottomSheet(
                          //           context: context,
                          //           backgroundColor:
                          //               Theme.of(context).colorScheme.secondary,
                          //           isScrollControlled: true,
                          //           enableDrag: true,
                          //           elevation: 300,
                          //           anchorPoint: Offset.fromDirection(1, 200),
                          //           builder: (context) {
                          //             return Gapper.cardPadding(
                          //               child: Column(
                          //                 children: widget.sections
                          //                     .map((section) => InkWell(
                          //                           child: SizedBox(
                          //                             width: double.maxFinite,
                          //                             height: 50,
                          //                             child:
                          //                                 Text(section.name ?? ''),
                          //                           ),
                          //                         ))
                          //                     .toList(),
                          //               ),
                          //             );
                          //           });
                          //     },
                          //     // highlightColor: AppColors.error,
                          //     // splashColor: AppColors.error,
                          //     highlightColor:
                          //         Theme.of(context).colorScheme.onSecondary,
                          //     splashColor: Theme.of(context).colorScheme.surface,
                          //     child: const Icon(Icons.more_horiz))
                        ],
                      ),
                      Gapper.vmGap(),
                      Text(
                        widget.task.description ?? '',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                color:
                                    Theme.of(context).colorScheme.onSecondary),
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
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
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
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
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
        ),
      ),
    );
  }
}

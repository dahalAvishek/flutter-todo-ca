import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/layers/domain/entities/tasks_entity.dart';

import '../../../core/constants/ui_constants.dart';
import '../../../core/presentations/gapped_list.dart';
import '../../../utils/dependencies_injection.dart';
import '../../domain/usecases/get_tasks.dart';
import '../blocs/get_tasks/get_tasks_bloc.dart';
import 'task_card.dart';

class SectionCard extends StatefulWidget {
  final String? sectionName;
  final String sectionId;
  const SectionCard({
    this.sectionName,
    required this.sectionId,
    super.key,
  });

  @override
  State<SectionCard> createState() => _SectionCardState();
}

class _SectionCardState extends State<SectionCard> {
  late List<int>? _items;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetTasksBloc(sl())
        ..add(
            GetTasksEvent.attempt(GetTasksParams(sectionId: widget.sectionId))),
      child: BlocBuilder<GetTasksBloc, GetTasksState>(
        builder: (context, state) {
          return state.mapOrNull(success: (tasksValue) {
                _items = tasksValue.tasks.task
                        ?.map((task) => task.order ?? 0)
                        .toList() ??
                    [];
                // _items = List.generate(
                //   tasksValue.tasks.task?.length ?? 0,
                //   (index) => index,
                // );

                final List<TaskCard> cards = [
                  for (int index = 0; index < (_items?.length ?? 0); index += 1)
                    TaskCard(
                      key: Key("$index"),
                      task: tasksValue.tasks.task?[index] ?? const TaskEntity(),
                    ),
                ];

                // final List<TaskCard> cards = List.generate(
                //   tasksValue.tasks.task?.length ?? 0,
                //   (index) => TaskCard(
                //     key: Key("$index"),
                //     task: tasksValue.tasks.task?[index] ?? const TaskEntity(),
                //   ),
                // );

                Widget proxyDecorator(
                    Widget child, int index, Animation<double> animation) {
                  return AnimatedBuilder(
                    animation: animation,
                    builder: (BuildContext context, Widget? child) {
                      final double animValue =
                          Curves.easeInOut.transform(animation.value);
                      final double elevation = lerpDouble(4, 8, animValue)!;
                      final double scale = lerpDouble(1, 1.02, animValue)!;
                      return Transform.scale(
                        scale: scale,
                        // Create a Card based on the color and the content of the dragged one
                        // and set its elevation to the animated value.
                        child: TaskCard(
                          elevation: elevation,
                          task: tasksValue.tasks.task?[index] ??
                              const TaskEntity(),
                          key: Key("$index"),
                        ),
                      );
                    },
                    child: child,
                  );
                }

                return SizedBox(
                  height: double.maxFinite,
                  child: GappedList(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      gap: UIConstants.padding,
                      direction: Axis.vertical,
                      children: [
                        Text(
                          widget.sectionName ?? '',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width - 40,
                          height: MediaQuery.of(context).size.height -
                              90 -
                              (MediaQuery.of(context).viewPadding.top +
                                  kToolbarHeight +
                                  MediaQuery.of(context).padding.bottom),
                          child: ReorderableListView(
                              scrollDirection: Axis.vertical,
                              physics: const BouncingScrollPhysics(),
                              proxyDecorator: proxyDecorator,
                              onReorder: (int oldIndex, int newIndex) {
                                if (_items == null) return;
                                setState(() {
                                  if (oldIndex < newIndex) {
                                    newIndex -= 1;
                                  }
                                  final TaskCard task =
                                      cards.removeAt(oldIndex);
                                  cards.insert(newIndex, task);
                                  final int item = _items!.removeAt(oldIndex);
                                  _items!.insert(newIndex, item);
                                  log("$_items");
                                });
                              },
                              children: cards ?? []),
                        )
                      ]),
                );
              }) ??
              const SizedBox();
        },
      ),
    );
  }
}

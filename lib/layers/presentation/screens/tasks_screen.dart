import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localstorage/localstorage.dart';

import '../../../bootstrap/presentation/blocs/get_projects/get_projects_bloc.dart';
import '../../../bootstrap/presentation/blocs/get_sections/get_sections_bloc.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/presentations/ui/spacer.dart';
import '../../domain/entities/tasks_entity.dart';
import '../../domain/usecases/move_task.dart';
import '../blocs/get_tasks/get_tasks_bloc.dart';
import '../blocs/move_task/move_task_bloc.dart';
import '../widgets/add_task_dialog.dart';
import '../widgets/section_card.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<MoveTaskBloc, MoveTaskState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      child: MultiBlocProvider(
          providers: [
            BlocProvider.value(
              value: context.read<GetSectionsBloc>()
                ..add(const GetSectionsEvent.attempt()),
            ),
          ],
          child: Scaffold(
            appBar: AppBar(
              title: BlocBuilder<GetProjectsBloc, GetProjectsState>(
                builder: (context, state) {
                  return state.mapOrNull(
                        success: (projectsValue) {
                          return Text(
                            projectsValue.project?.name ?? "",
                            style: Theme.of(context).textTheme.displayMedium,
                          );
                        },
                      ) ??
                      const SizedBox();
                },
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: InkWell(
                    onTap: () {},
                    splashColor: AppColors.error,
                    highlightColor: AppColors.dark,
                    child: const Material(child: Icon(Icons.history)),
                  ),
                )
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (context) => const AddTaskDialog(),
              ),
              backgroundColor: Theme.of(context).colorScheme.primary,
              child: Icon(
                Icons.add_outlined,
                size: 32,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            body: BlocBuilder<GetSectionsBloc, GetSectionsState>(
              builder: (context, state) {
                return state.mapOrNull(success: (sectionsVal) {
                      final todoSectionVal =
                          sectionsVal.sections!.sections![0].id!;
                      final inProgressSectionVal =
                          sectionsVal.sections!.sections![1].id!;
                      final doneSectionVal =
                          sectionsVal.sections!.sections![2].id!;

                      return MultiBlocProvider(
                        providers: [
                          BlocProvider.value(
                            value: context.read<GetTasksBloc>()
                              ..add(GetTasksEvent.getTasks(
                                  todoSectionId: todoSectionVal,
                                  doneStringId: doneSectionVal,
                                  inProgressSectionId: inProgressSectionVal)),
                          ),
                        ],
                        child: BlocBuilder<GetTasksBloc, GetTasksState>(
                          builder: (context, state) {
                            return state.mapOrNull(
                                  successAll: (taskVal) {
                                    List<TaskEntity> todos =
                                        taskVal.todo.toList();
                                    List<TaskEntity> inProgress =
                                        taskVal.inProgress.toList();
                                    List<TaskEntity> done =
                                        taskVal.done.toList();
                                    // log(todos.first.content ?? '');
                                    return SizedBox(
                                      height: double.maxFinite,
                                      child: Column(
                                        children: [
                                          Gapper.vGap(),
                                          Expanded(
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              physics:
                                                  const PageScrollPhysics(),
                                              controller: PageController(
                                                  viewportFraction: 0.8,
                                                  initialPage: 0),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    SectionCard(
                                                        sectionId:
                                                            todoSectionVal,
                                                        sections: sectionsVal
                                                                .sections
                                                                ?.sections ??
                                                            [],
                                                        tasks: todos,
                                                        sectionName: "Todo",
                                                        itemBuilder:
                                                            (taskID) => [
                                                                  DropdownMenuItem<
                                                                          String>(
                                                                      value:
                                                                          doneSectionVal,
                                                                      onTap:
                                                                          () {
                                                                        setState(
                                                                            () {
                                                                          // todos.indexOf(element)
                                                                          final removedTodo = todos.removeAt(todos.indexOf(todos.firstWhere((todo) =>
                                                                              todo.id ==
                                                                              taskID)));
                                                                          inProgress.insert(
                                                                              0,
                                                                              removedTodo);
                                                                        });
                                                                        context
                                                                            .read<MoveTaskBloc>()
                                                                            .add(MoveTaskEvent.attempt(params: MoveTasksParams(id: taskID ?? '', sectionId: inProgressSectionVal)));
                                                                        if (taskID !=
                                                                            null) {
                                                                          localStorage.setItem(
                                                                              taskID,
                                                                              DateTime.now().toIso8601String());
                                                                        }
                                                                      },
                                                                      child: const Text(
                                                                          "To Inprogress")),
                                                                ]),
                                                    SectionCard(
                                                        sectionId:
                                                            inProgressSectionVal,
                                                        sections: sectionsVal
                                                                .sections
                                                                ?.sections ??
                                                            [],
                                                        tasks: inProgress,
                                                        sectionName:
                                                            "In Progress",
                                                        itemBuilder:
                                                            (taskID) => [
                                                                  DropdownMenuItem<
                                                                          String>(
                                                                      value:
                                                                          doneSectionVal,
                                                                      onTap:
                                                                          () {
                                                                        context
                                                                            .read<MoveTaskBloc>()
                                                                            .add(MoveTaskEvent.attempt(params: MoveTasksParams(id: taskID ?? '', sectionId: doneSectionVal)));
                                                                        if (taskID !=
                                                                            null) {
                                                                          final inProgressStartedTime =
                                                                              localStorage.getItem(taskID);

                                                                          if (inProgressStartedTime !=
                                                                              null) {
                                                                            Duration
                                                                                difference =
                                                                                DateTime.now().difference(DateTime.parse(inProgressStartedTime));
                                                                            localStorage.setItem(taskID,
                                                                                difference.toString().split(".").first);
                                                                          }
                                                                        }
                                                                      },
                                                                      child: const Text(
                                                                          "To Done"))
                                                                ]),
                                                    SectionCard(
                                                        sectionId:
                                                            doneSectionVal,
                                                        sections: sectionsVal
                                                                .sections
                                                                ?.sections ??
                                                            [],
                                                        tasks: done,
                                                        sectionName: "Done",
                                                        itemBuilder:
                                                            (taskID) => [
                                                                  DropdownMenuItem<
                                                                          String>(
                                                                      value:
                                                                          doneSectionVal,
                                                                      onTap:
                                                                          () {
                                                                        context
                                                                            .read<MoveTaskBloc>()
                                                                            .add(MoveTaskEvent.attempt(params: MoveTasksParams(id: taskID ?? '', sectionId: todoSectionVal)));
                                                                      },
                                                                      child: const Text(
                                                                          "Close"))
                                                                ])
                                                  ]),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ) ??
                                const SizedBox();
                          },
                        ),
                      );
                    }) ??
                    const SizedBox();
              },
            ),
          )),
    );
  }
}

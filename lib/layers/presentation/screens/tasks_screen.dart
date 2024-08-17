import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/core/presentations/gapped_list.dart';

import '../../../bootstrap/presentation/blocs/get_projects/get_projects_bloc.dart';
import '../../../bootstrap/presentation/blocs/get_sections/get_sections_bloc.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/ui_constants.dart';
import '../../../core/presentations/ui/spacer.dart';
import '../../../core/presentations/widgets/button.dart';
import '../../domain/usecases/get_tasks.dart';
import '../blocs/get_tasks/get_tasks_bloc.dart';
import '../wisgets/add_task_dialog.dart';
import '../wisgets/task_card.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: context.read<GetSectionsBloc>()
              ..add(const GetSectionsEvent.attempt()),
          ),
        ],
        child: BlocListener<GetSectionsBloc, GetSectionsState>(
          listener: (context, state) {
            // TODO: implement listener
            state.mapOrNull(
              success: (value) {
                if (value.sections?.sections?[0].id != null) {
                  context.read<GetTasksBloc>().add(GetTasksEvent.attempt(
                      GetTasksParams(
                          projectId: value.sections!.sections!.first.id!)));
                }
              },
            );
          },
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
                  child: Button(
                    alignment: MainAxisAlignment.center,
                    borderColor: Colors.transparent,
                    width: 100,
                    isExpanded: false,
                    handleTap: () => showDialog<String>(
                      context: context,
                      builder: (context) => const AddTaskDialog(),
                    ),
                    isFilled: true,
                    fillColor: AppColors.grayAccent,
                    height: 32,
                    prefixWidget: const Icon(
                      Icons.add_outlined,
                      size: 16,
                    ),
                    label: const Text(
                      "Add Task",
                    ),
                  ),
                )
              ],
            ),
            body: BlocBuilder<GetSectionsBloc, GetSectionsState>(
              builder: (context, state) {
                return state.mapOrNull(
                        success:
                            (value) => BlocBuilder<GetTasksBloc, GetTasksState>(
                                  builder: (context, state) {
                                    return state.mapOrNull(
                                          success: (tasksValue) {
                                            return SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              physics:
                                                  const AlwaysScrollableScrollPhysics(),
                                              child: Column(
                                                children: [
                                                  Gapper.vGap(),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children:
                                                        value.sections?.sections
                                                                ?.map(
                                                                  (section) =>
                                                                      SizedBox(
                                                                    width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width,
                                                                    child: Gapper
                                                                        .screenPadding(
                                                                      child: GappedList(
                                                                          crossAxisAlignment: CrossAxisAlignment
                                                                              .start,
                                                                          gap: UIConstants
                                                                              .padding,
                                                                          direction:
                                                                              Axis.vertical,
                                                                          children: [
                                                                            Text(
                                                                              section.name ?? '',
                                                                              style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
                                                                            ),
                                                                            if (tasksValue.tasks?.task !=
                                                                                null)
                                                                              ...tasksValue.tasks!.task!.map((e) => TaskCard(
                                                                                    task: e,
                                                                                  ))
                                                                          ]),
                                                                    ),
                                                                  ),
                                                                )
                                                                .toList() ??
                                                            [],
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        ) ??
                                        const SizedBox();
                                  },
                                )) ??
                    const SizedBox();
              },
            ),
          ),
        ));
  }
}

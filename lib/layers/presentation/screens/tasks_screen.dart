import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/layers/domain/usecases/get_tasks.dart';
import 'package:flutter_todo/layers/presentation/blocs/get_done/get_done_bloc.dart';
import 'package:flutter_todo/layers/presentation/blocs/get_todo/get_todo_bloc.dart';

import '../../../bootstrap/presentation/blocs/get_projects/get_projects_bloc.dart';
import '../../../bootstrap/presentation/blocs/get_sections/get_sections_bloc.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/presentations/ui/spacer.dart';
import '../blocs/get_in_progress/get_in_progress_bloc.dart';
import '../widgets/add_task_dialog.dart';
import '../widgets/section_card.dart';

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
              return state.mapOrNull(
                      success: (sectionsVal) => MultiBlocProvider(
                            providers: [
                              BlocProvider.value(
                                value: context.read<GetTodoBloc>()
                                  ..add(GetTodoEvent.attempt(GetTasksParams(
                                      sectionId: sectionsVal
                                              .sections?.sections?[0].id ??
                                          '0'))),
                              ),
                              BlocProvider.value(
                                value: context.read<GetInProgressBloc>()
                                  ..add(GetInProgressEvent.attempt(
                                      GetTasksParams(
                                          sectionId: sectionsVal
                                                  .sections?.sections?[1].id ??
                                              '0'))),
                              ),
                              BlocProvider.value(
                                value: context.read<GetDoneBloc>()
                                  ..add(GetDoneEvent.attempt(GetTasksParams(
                                      sectionId: sectionsVal
                                              .sections?.sections?[2].id ??
                                          '0'))),
                              ),
                            ],
                            child: SizedBox(
                              height: double.maxFinite,
                              child: Column(
                                children: [
                                  Gapper.vGap(),
                                  Expanded(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            BlocBuilder<GetTodoBloc,
                                                GetTodoState>(
                                              builder: (context, state) {
                                                return state.mapOrNull(
                                                      success: (taskVal) {
                                                        return SectionCard(
                                                          sectionId: sectionsVal
                                                                  .sections
                                                                  ?.sections?[0]
                                                                  .id ??
                                                              '',
                                                          sections: sectionsVal
                                                                  .sections
                                                                  ?.sections ??
                                                              [],
                                                          tasks: taskVal
                                                                  .tasks.task ??
                                                              [],
                                                          sectionName: "Todo",
                                                        );
                                                      },
                                                    ) ??
                                                    const SizedBox(
                                                        child:
                                                            Text("sjdfldsk"));
                                              },
                                            ),
                                            BlocBuilder<GetInProgressBloc,
                                                GetInProgressState>(
                                              builder: (context, state) {
                                                return state.mapOrNull(
                                                      success: (taskVal) {
                                                        return SectionCard(
                                                          sectionId: sectionsVal
                                                                  .sections
                                                                  ?.sections?[0]
                                                                  .id ??
                                                              '',
                                                          sections: sectionsVal
                                                                  .sections
                                                                  ?.sections ??
                                                              [],
                                                          tasks: taskVal
                                                                  .tasks.task ??
                                                              [],
                                                          sectionName:
                                                              "InProgress",
                                                        );
                                                      },
                                                    ) ??
                                                    const SizedBox(
                                                        child:
                                                            Text("sjdfldsk"));
                                              },
                                            ),
                                            BlocBuilder<GetDoneBloc,
                                                GetDoneState>(
                                              builder: (context, state) {
                                                return state.mapOrNull(
                                                      success: (taskVal) {
                                                        return SectionCard(
                                                          sectionId: sectionsVal
                                                                  .sections
                                                                  ?.sections?[0]
                                                                  .id ??
                                                              '',
                                                          sections: sectionsVal
                                                                  .sections
                                                                  ?.sections ??
                                                              [],
                                                          tasks: taskVal
                                                                  .tasks.task ??
                                                              [],
                                                          sectionName: "Done",
                                                        );
                                                      },
                                                    ) ??
                                                    const SizedBox(
                                                        child: Text("Loading"));
                                              },
                                            ),
                                          ]),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )) ??
                  const SizedBox();
            },
          ),
        ));
  }
}

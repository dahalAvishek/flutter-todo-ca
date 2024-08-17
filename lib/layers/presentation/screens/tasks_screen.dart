import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bootstrap/presentation/blocs/get_projects/get_projects_bloc.dart';
import '../../../bootstrap/presentation/blocs/get_sections/get_sections_bloc.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/presentations/ui/spacer.dart';
import '../../../core/presentations/widgets/button.dart';

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
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 12),
                child: Button(
                  alignment: MainAxisAlignment.center,
                  borderColor: Colors.transparent,
                  width: 100,
                  isExpanded: false,
                  isFilled: true,
                  fillColor: AppColors.grayAccent,
                  height: 32,
                  prefixWidget: Icon(
                    Icons.add_outlined,
                    size: 16,
                  ),
                  label: Text(
                    "Add Task",
                  ),
                ),
              )
            ],
          ),
          body: BlocBuilder<GetSectionsBloc, GetSectionsState>(
            builder: (context, state) {
              return state.mapOrNull(
                      success: (value) => SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            physics: const AlwaysScrollableScrollPhysics(),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: value.sections?.sections
                                      ?.map(
                                        (section) => SizedBox(
                                          width:
                                              MediaQuery.sizeOf(context).width,
                                          child: Gapper.screenPadding(
                                            child: Column(children: [
                                              Text(
                                                section.name ?? '',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleLarge
                                                    ?.copyWith(
                                                        fontWeight:
                                                            FontWeight.w700),
                                              )
                                            ]),
                                          ),
                                        ),
                                      )
                                      .toList() ??
                                  [],
                            ),
                          )) ??
                  const SizedBox();
            },
          ),
        ));
  }
}

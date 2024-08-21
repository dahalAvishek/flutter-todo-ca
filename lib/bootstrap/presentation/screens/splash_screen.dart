import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/bootstrap/presentation/blocs/get_projects/get_projects_bloc.dart';
import 'package:flutter_todo/core/presentations/gapped_list.dart';
import 'package:flutter_todo/core/routes/app_routes.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/constants/app_colors.dart';
import '../../domain/usecases/create_project.dart';
import '../blocs/app/app_bloc.dart';
import '../blocs/create_project/create_project_bloc.dart';
import '../blocs/create_sections/create_sections_bloc.dart';
import '../blocs/get_sections/get_sections_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: context.read<AppBloc>()..add(const AppEvent.checkOnBoard()),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AppBloc, AppState>(
            listener: (context, state) {
              state.mapOrNull(
                successOnBoard: (value) {
                  // if (!value.isFirstTime) {
                  //   context.replace(TASKS_ROUTE);
                  //   return;
                  // }
                  context
                      .read<GetProjectsBloc>()
                      .add(const GetProjectsEvent.attempt());
                },
              );
            },
          ),
          BlocListener<GetProjectsBloc, GetProjectsState>(
            listener: (context, state) {
              state.mapOrNull(success: (value) {
                context
                    .read<GetSectionsBloc>()
                    .add(const GetSectionsEvent.attempt());
                // context
                //     .read<CreateSectionsBloc>()
                //     .add(const CreateSectionsEvent.attempt());
              }, failure: (value) {
                context.read<CreateProjectBloc>().add(
                    const CreateProjectEvent.attempt(
                        CreateProjectParams(name: "My Todo App")));
              });
            },
          ),
          BlocListener<GetSectionsBloc, GetSectionsState>(
            listener: (context, state) {
              state.mapOrNull(success: (value) {
                context.replace(TASKS_ROUTE);
                // context
                //     .read<CreateSectionsBloc>()
                //     .add(const CreateSectionsEvent.attempt());
              }, failure: (value) {
                context
                    .read<CreateSectionsBloc>()
                    .add(const CreateSectionsEvent.attempt());
              });
            },
          ),
          BlocListener<CreateProjectBloc, CreateProjectState>(
            listener: (context, state) {
              state.mapOrNull(
                success: (value) {
                  context
                      .read<GetProjectsBloc>()
                      .add(const GetProjectsEvent.attempt());
                },
              );
            },
          ),
          BlocListener<CreateSectionsBloc, CreateSectionsState>(
            listener: (context, state) {
              state.mapOrNull(
                success: (value) {
                  context
                      .read<GetSectionsBloc>()
                      .add(const GetSectionsEvent.attempt());
                },
              );
            },
          ),
        ],
        child: Scaffold(
          backgroundColor: AppColors.black,
          body: Center(
            child: Shimmer.fromColors(
              direction: ShimmerDirection.rtl,
              highlightColor: AppColors.white.withOpacity(0.1),
              baseColor: AppColors.grayDark,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GappedList(
                    mainAxisSize: MainAxisSize.max,
                    gap: 10,
                    direction: Axis.vertical,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      LoadingAnimationWidget.prograssiveDots(
                        color: Colors.white,
                        size: 50,
                      ),
                      const Text(
                        "Initializing Project",
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/core/presentations/gapped_list.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/routes/app_routes.dart';
import '../blocs/app/app_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: context.read<AppBloc>()..add(const AppEvent.checkProject()),
      child: BlocListener<AppBloc, AppState>(
        listener: (context, state) {
          state.mapOrNull(
            successCheckProject: (value) {
              if (value.project.name != null) {
                context.replace(TASKS_ROUTE);
              }
            },
          );
        },
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
                  Image.asset(
                    "assets/logo/logo.png",
                    width: 500,
                    colorBlendMode: BlendMode.clear,
                    height: 300,
                  ),
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

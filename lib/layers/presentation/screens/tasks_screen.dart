import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bootstrap/presentation/blocs/app/app_bloc.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return state.mapOrNull(
              successCheckProject: (value) {
                return Scaffold(
                    appBar: AppBar(
                  title: Text(value.project.name ?? ""),
                ));
              },
            ) ??
            const SizedBox();
      },
    );
  }
}

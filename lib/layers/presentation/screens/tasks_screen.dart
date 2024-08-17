import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/bootstrap/presentation/blocs/get_projects/get_projects_bloc.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetProjectsBloc, GetProjectsState>(
      builder: (context, state) {
        return state.mapOrNull(
              success: (value) {
                return Scaffold(
                    appBar: AppBar(
                  title: Text(value.project?.name ?? ""),
                ));
              },
            ) ??
            const SizedBox(child: Text("error"));
      },
    );
  }
}

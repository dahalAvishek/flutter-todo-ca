import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/get_completed_task/get_completed_task_bloc.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "History ",
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
      body: BlocProvider.value(
        value: context.read<GetCompletedTaskBloc>()
          ..add(const GetCompletedTaskEvent.attempt()),
        child: BlocBuilder<GetCompletedTaskBloc, GetCompletedTaskState>(
          builder: (context, state) {
            return state.mapOrNull(
                  success: (value) {
                    return Column(
                        children: value.completedTasks
                            .map((element) => Text(element.content ?? ''))
                            .toList());
                  },
                ) ??
                const SizedBox();
          },
        ),
      ),
    );
  }
}

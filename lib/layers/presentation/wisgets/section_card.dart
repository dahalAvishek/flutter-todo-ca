import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/ui_constants.dart';
import '../../../core/presentations/gapped_list.dart';
import '../../../utils/dependencies_injection.dart';
import '../../domain/usecases/get_tasks.dart';
import '../blocs/get_tasks/get_tasks_bloc.dart';
import 'task_card.dart';

class SectionCard extends StatelessWidget {
  final String? sectionName;
  final String sectionId;
  const SectionCard({
    this.sectionName,
    required this.sectionId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetTasksBloc(sl()),
      child: BlocProvider.value(
        value: context.read<GetTasksBloc>()
          ..add(GetTasksEvent.attempt(GetTasksParams(sectionId: sectionId))),
        child: BlocBuilder<GetTasksBloc, GetTasksState>(
          builder: (context, state) {
            return state.mapOrNull(
                    success: (tasksValue) => GappedList(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            gap: UIConstants.padding,
                            direction: Axis.vertical,
                            children: [
                              Text(
                                sectionName ?? '',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(fontWeight: FontWeight.w700),
                              ),
                              if (tasksValue.tasks?.task != null)
                                ...tasksValue.tasks!.task!.map((e) => TaskCard(
                                      task: e,
                                    ))
                            ])) ??
                const SizedBox();
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/core/constants/ui_constants.dart';
import 'package:flutter_todo/layers/presentation/widgets/history_card.dart';

import '../../../core/presentations/ui/spacer.dart';
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
                    return SizedBox(
                      height: double.maxFinite,
                      child: Gapper.screenPadding(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          physics: const BouncingScrollPhysics(),
                          child: Column(children: [
                            Gapper.vGap(),
                            ...value.completedTasks.map((element) => Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: UIConstants.maxPadding),
                                  child: HistoryCard(
                                    completedAt: element.completedAt ?? '',
                                    content: element.content ?? '',
                                    taskId: element.id ?? '',
                                  ),
                                )),
                            Gapper.vGap(),
                          ]),
                        ),
                      ),
                    );
                  },
                ) ??
                const SizedBox();
          },
        ),
      ),
    );
  }
}

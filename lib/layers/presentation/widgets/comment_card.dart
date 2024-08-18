import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/dependencies_injection.dart';
import '../blocs/get_comments/get_comments_bloc.dart';

class CommentCard extends StatelessWidget {
  final String taskId;
  const CommentCard({super.key, required this.taskId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          GetCommentsBloc(sl())..add(GetCommentsEvent.attempt(taskId: taskId)),
      child: const Text("sadfldslkjfdsfjsad"),
    );
  }
}

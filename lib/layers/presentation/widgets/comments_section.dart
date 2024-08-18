import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/constants/ui_constants.dart';
import '../../../core/presentations/ui/spacer.dart';
import '../../../core/presentations/widgets/add_on_input_field.dart';
import '../../../utils/dependencies_injection.dart';
import '../blocs/create_comment/create_comment_bloc.dart';
import '../blocs/get_comments/get_comments_bloc.dart';
import 'task_card.dart';

class CommentsSection extends StatelessWidget {
  const CommentsSection({
    super.key,
    required this.showComments,
    required this.widget,
    required TextEditingController commentController,
  }) : _commentController = commentController;

  final TaskCard widget;
  final bool showComments;
  final TextEditingController _commentController;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetCommentsBloc(sl())
        ..add(GetCommentsEvent.attempt(taskId: widget.task.id!)),
      child: BlocListener<CreateCommentBloc, CreateCommentState>(
        listener: (context, state) {
          if (widget.task.id != null) {
            state.mapOrNull(
              success: (value) => context
                  .read<GetCommentsBloc>()
                  .add(GetCommentsEvent.attempt(taskId: widget.task.id!)),
            );
          }
        },
        child: BlocBuilder<GetCommentsBloc, GetCommentsState>(
          builder: (context, state) {
            if (showComments) {
              return SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(),
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                          maxHeight: 150, maxWidth: double.maxFinite),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: state.mapOrNull(
                                  success: (value) {
                                    return value.comments?.comments
                                        ?.map((comment) => Container(
                                              margin: const EdgeInsets.only(
                                                  bottom:
                                                      UIConstants.x2MinPadding),
                                              width: double.maxFinite,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(
                                                              UIConstants
                                                                  .borderRadius)),
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .secondary),
                                              child: Gapper.cardX2MinPadding(
                                                  child: Text(
                                                      comment.content ?? '')),
                                            ))
                                        .toList();
                                  },
                                  loading: (value) => List.generate(
                                        1,
                                        (index) => Shimmer.fromColors(
                                            baseColor: Theme.of(context)
                                                .colorScheme
                                                .secondary,
                                            highlightColor: Theme.of(context)
                                                .colorScheme
                                                .onSecondary
                                                .withOpacity(0.5),
                                            child: Column(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .onPrimary,
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                              Radius.circular(
                                                                  UIConstants
                                                                      .borderRadius))),
                                                  width: double.maxFinite,
                                                  height: 10,
                                                ),
                                                Gapper.vmGap(),
                                              ],
                                            )),
                                      )) ??
                              [],
                        ),
                      ),
                    ),
                    AddOnInputField(
                      controller: _commentController,
                      verticalTextPadding: 8,
                      suffixWidget: InkWell(
                        onTap: () {
                          if (widget.task.id != null &&
                              _commentController.text.isNotEmpty) {
                            context.read<CreateCommentBloc>().add(
                                CreateCommentEvent.attempt(
                                    taskId: widget.task.id!,
                                    content: _commentController.text));
                            _commentController.clear();
                          }
                        },
                        child: Icon(
                          Icons.send,
                          color: Theme.of(context)
                              .colorScheme
                              .onPrimary
                              .withOpacity(0.5),
                        ),
                      ),
                      borderColor: Theme.of(context).colorScheme.outline,
                    )
                  ],
                ),
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}

// state.mapOrNull(
//                 success = (value) => ConstrainedBox(
//                   constraints: const BoxConstraints(
//                     maxHeight: 200,
//                   ),
//                   child: SingleChildScrollView(
//                       child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Divider(),
//                       if (widget.task.id != null)
//                         ...value.comments?.comments?.map((comment) => Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Gapper.vxmGap(),
//                                     Text(comment.content ?? ""),
//                                   ],
//                                 )) ??
//                             [],
//                       Gapper.vxmGap(),
//                       AddOnInputField(
//                         controller: _commentController,
//                         verticalTextPadding: 8,
//                         suffixWidget: InkWell(
//                           onTap: () {
//                             if (widget.task.id != null) {
//                               context.read<CreateCommentBloc>().add(
//                                   CreateCommentEvent.attempt(
//                                       taskId: widget.task.id!,
//                                       content: _commentController.text));
//                             }
//                           },
//                           child: Icon(
//                             Icons.send,
//                             color: Theme.of(context)
//                                 .colorScheme
//                                 .onPrimary
//                                 .withOpacity(0.5),
//                           ),
//                         ),
//                         borderColor: Theme.of(context).colorScheme.outline,
//                       )
//                     ],
//                   )),
//                 ),
//                 loading = (value) => Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Divider(),
//                     Gapper.vxmGap(),
//                     const Text("Loading...")
//                   ],
//                 ),
//               ) ??
//               const SizedBox();


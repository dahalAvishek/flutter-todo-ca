import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/core/presentations/ui/spacer.dart';

import '../../../bootstrap/presentation/blocs/get_sections/get_sections_bloc.dart';
import '../../../core/presentations/widgets/button.dart';
import '../../domain/usecases/get_tasks.dart';
import '../blocs/create_task/create_task_bloc.dart';
import '../blocs/edit_task/edit_task_bloc.dart';
import '../blocs/get_tasks/get_tasks_bloc.dart';

class AddTaskDialog extends StatefulWidget {
  final String? name;
  final String? description;
  final String? taskId;

  const AddTaskDialog({super.key, this.name, this.description, this.taskId});

  @override
  State<AddTaskDialog> createState() => _AddTaskDialogState();
}

class _AddTaskDialogState extends State<AddTaskDialog> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController =
        TextEditingController(text: widget.name);
    final TextEditingController descriptionController =
        TextEditingController(text: widget.description);
    return BlocBuilder<GetSectionsBloc, GetSectionsState>(
      builder: (context, state) {
        return state.mapOrNull(
              success: (getSectionsV) {
                return BlocListener<CreateTaskBloc, CreateTaskState>(
                  listener: (context, state) {
                    state.mapOrNull(
                      success: (createTaskV) {
                        if (getSectionsV.sections?.sections?.first.id != null) {
                          context.read<GetTasksBloc>().add(
                              GetTasksEvent.attempt(GetTasksParams(
                                  sectionId: getSectionsV
                                      .sections!.sections!.first.id!)));
                        }
                      },
                    );
                  },
                  child: AlertDialog(
                    title: const Text('Add Task'),
                    content: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text("Task Name"),
                          TextFormField(
                            // initialValue: widget.name,
                            controller: nameController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Name required";
                              }
                              return null;
                            },
                          ),
                          Gapper.vGap(),
                          const Text("Desctiption"),
                          TextFormField(
                            controller: descriptionController,
                          ),
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      Button(
                        borderColor: Colors.transparent,
                        label: Text(
                          "Cancel",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onSurface),
                        ),
                        width: 70,
                        height: 25,
                        handleTap: () => Navigator.pop(context),
                        // isButtonDisabled: _formKey.currentState?.validate(),
                      ),
                      Button(
                        borderColor: Colors.transparent,
                        label: Text(
                          widget.taskId == null ? "Add Task" : "Edit Task",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onSurface),
                        ),
                        handleTap: () {
                          if (widget.taskId == null) {
                            if (_formKey.currentState?.validate() != null &&
                                _formKey.currentState!.validate() &&
                                getSectionsV.sections?.sections?.first.id !=
                                    null) {
                              context
                                  .read<CreateTaskBloc>()
                                  .add(CreateTaskEvent.attempt(
                                    content: nameController.text,
                                    sectionId: getSectionsV
                                        .sections!.sections!.first.id!,
                                    description: descriptionController.text,
                                  )); // Navigator.pop(context);
                            }
                          } else {
                            if (_formKey.currentState?.validate() != null &&
                                _formKey.currentState!.validate() &&
                                getSectionsV.sections?.sections?.first.id !=
                                    null) {
                              context
                                  .read<EditTaskBloc>()
                                  .add(EditTaskEvent.attempt(
                                    content: nameController.text,
                                    taskId: widget.taskId!,
                                    description: descriptionController.text,
                                  )); // Navigator.pop(context);
                            }
                          }
                          Navigator.pop(context);
                        },
                        width: 100,
                        height: 25,
                        // isButtonDisabled: _formKey.currentState?.validate(),
                      ),
                    ],
                  ),
                );
              },
            ) ??
            const SizedBox();
      },
    );
  }
}

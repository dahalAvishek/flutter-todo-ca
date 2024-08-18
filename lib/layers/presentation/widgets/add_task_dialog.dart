import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/core/presentations/ui/spacer.dart';

import '../../../bootstrap/presentation/blocs/get_sections/get_sections_bloc.dart';
import '../../../core/presentations/widgets/button.dart';
import '../../domain/usecases/get_tasks.dart';
import '../blocs/create_task/create_task_bloc.dart';
import '../blocs/get_tasks/get_tasks_bloc.dart';

class AddTaskDialog extends StatefulWidget {
  const AddTaskDialog({
    super.key,
  });

  @override
  State<AddTaskDialog> createState() => _AddTaskDialogState();
}

class _AddTaskDialogState extends State<AddTaskDialog> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                        Navigator.pop(context);
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
                            controller: _nameController,
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
                            controller: _descriptionController,
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
                          "Add Task",
                          style: TextStyle(
                              color:
                                  _formKey.currentState?.validate() == null &&
                                          _formKey.currentState!.validate()
                                      ? Theme.of(context).colorScheme.onSurface
                                      : Theme.of(context)
                                          .colorScheme
                                          .onSecondary
                                          .withOpacity(0.5)),
                        ),
                        handleTap: () {
                          if (_formKey.currentState?.validate() != null &&
                              _formKey.currentState!.validate() &&
                              getSectionsV.sections?.sections?.first.id !=
                                  null) {
                            context
                                .read<CreateTaskBloc>()
                                .add(CreateTaskEvent.attempt(
                                  content: _nameController.text,
                                  sectionId: getSectionsV
                                      .sections!.sections!.first.id!,
                                  description: _descriptionController.text,
                                )); // Navigator.pop(context);
                          }
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

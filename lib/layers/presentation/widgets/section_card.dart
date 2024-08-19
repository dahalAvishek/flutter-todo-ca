import 'package:flutter/material.dart';
import 'package:flutter_todo/layers/domain/entities/tasks_entity.dart';

import '../../../bootstrap/domain/entities/section_entity.dart';
import '../../../core/presentations/ui/spacer.dart';
import 'task_card.dart';

class SectionCard extends StatefulWidget {
  final String? sectionName;
  final String sectionId;
  final List<SectionEntity> sections;
  final List<TaskEntity> tasks;

  const SectionCard({
    this.sectionName,
    required this.tasks,
    required this.sections,
    required this.sectionId,
    super.key,
  });

  @override
  State<SectionCard> createState() => _SectionCardState();
}

class _SectionCardState extends State<SectionCard> {
  late List<TaskEntity>? _items;
  @override
  Widget build(BuildContext context) {
    _items = widget.tasks.toList();

    final List<TaskCard> cards = _items != null
        ? _items!
            .map(
              (e) => TaskCard(
                sections: widget.sections
                    .where((section) => section.id != widget.sectionId)
                    .toList(),
                sectionId: widget.sectionId,
                key: Key("${_items?.indexOf(e)}"),
                task: e,
              ),
            )
            .toList()
        : [];

    // final List<TaskCard> cards = List.generate(
    //   tasksValue.tasks.task?.length ?? 0,
    //   (index) => TaskCard(
    //     key: Key("$index"),
    //     task: tasksValue.tasks.task?[index] ?? const TaskEntity(),
    //   ),
    // );

    // Widget proxyDecorator(
    //     Widget child, int index, Animation<double> animation) {
    //   return AnimatedBuilder(
    //     animation: animation,
    //     builder: (BuildContext context, Widget? child) {
    //       final double animValue = Curves.easeInOut.transform(animation.value);
    //       final double elevation = lerpDouble(4, 8, animValue)!;
    //       final double scale = lerpDouble(1, 1.02, animValue)!;
    //       return Transform.scale(
    //         scale: scale,
    //         // Create a Card based on the color and the content of the dragged one
    //         // and set its elevation to the animated value.
    //         child: TaskCard(
    //           sectionId: widget.tasks[index].sectionId ?? '',
    //           elevation: elevation,
    //           sections: widget.sections
    //               .where((section) => section.id != widget.sectionId)
    //               .toList(),
    //           task: widget.tasks[index] ?? const TaskEntity(),
    //           key: Key("$index"),
    //         ),
    //       );
    //     },
    //     child: child,
    //   );
    // }

    return SizedBox(
      width: MediaQuery.sizeOf(context).width - 80,
      child: Gapper.cardPadding(
        child: ListView(
            // header: Padding(
            //   padding: const EdgeInsets.only(bottom: UIConstants.minPadding),
            //   child: Text(
            //     widget.sectionName ?? '',
            //     style: Theme.of(context)
            //         .textTheme
            //         .titleLarge
            //         ?.copyWith(fontWeight: FontWeight.w700),
            //   ),
            // ),
            // shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            // proxyDecorator: proxyDecorator,
            // onReorder: (int oldIndex, int newIndex) {
            //   if (_items == null) return;
            //   setState(() {
            //     if (oldIndex < newIndex) {
            //       newIndex -= 1;
            //     }
            //     final TaskEntity item = _items!.removeAt(oldIndex);
            //     _items!.insert(newIndex, item);
            //     log("${_items?.map((e) => cards[_items?.indexOf(e) ?? 0].key)}");
            //   });
            // },
            children: [
              Text(
                widget.sectionName ?? '',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.w700),
              ),
              Gapper.vGap(),
              ...cards
            ]),
      ),
    );
  }
}

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
  final List<DropdownMenuItem<String?>> Function(String?) itemBuilder;

  const SectionCard({
    required this.itemBuilder,
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
                isInProgressCard: widget.sectionName == "In Progress",
                isDoneCard: widget.sectionName == "Done",
                itemBuilder: widget.itemBuilder,
                key: Key("${_items?.indexOf(e)}"),
                task: e,
              ),
            )
            .toList()
        : [];

    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.8,
      child: Gapper.cardPadding(
        child: ListView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
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

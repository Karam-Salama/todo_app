// Widget for Task Card
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../../my_theme_data.dart';

class TaskCard extends StatelessWidget {
  final String taskName;
  final String time;
  final bool isCompleted;

  const TaskCard({
    super.key,
    required this.taskName,
    required this.time,
    this.isCompleted = false,
  });

  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: ActionPane(
        motion: const DrawerMotion(),
        children: [
          SlidableAction(
            onPressed: (_) {},
            backgroundColor: MyTheme.red,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
            flex: 1,
          ),
        ],
      ),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                width: 8,
                height: 80,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    taskName,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Icon(Icons.access_time, color: Colors.black),
                      const SizedBox(width: 5),
                      Text(
                        time,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                decoration: BoxDecoration(
                  color: MyTheme.lightPrimary,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Icon(
                  Icons.check,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

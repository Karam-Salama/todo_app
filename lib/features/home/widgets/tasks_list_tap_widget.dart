// ignore_for_file: avoid_unnecessary_containers

import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/my_theme_data.dart';

import 'task_card_widget.dart';

class TasksListTap extends StatelessWidget {
  const TasksListTap({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: CalendarTimeline(
            showYears: true,
            initialDate: DateTime.now(),
            firstDate: DateTime.now().subtract(const Duration(days: 365)),
            lastDate: DateTime.now().add(const Duration(days: 365)),
            onDateSelected: (date) {},
            leftMargin: 20,
            monthColor: Colors.black,
            dayColor: Colors.black,
            activeDayColor: MyTheme.lightPrimary,
            activeBackgroundDayColor: Colors.white,
            dotColor: MyTheme.lightPrimary,
            locale: 'en',
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 3,
            (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 5.0),
                child: TaskCard(
                  taskName: 'Play basket ball',
                  time: '10:30 AM',
                  isCompleted: true, // Change dynamically based on task
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

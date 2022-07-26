import 'package:flutter/material.dart';
import 'package:order_tennis/ui/scheduler/component/scheduler_item.dart';

class SchedulerListView extends StatelessWidget {
  const SchedulerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
        separatorBuilder: (context, index) {
          return const SizedBox(height: 8,);
        },
        itemCount: 10,
        itemBuilder: (context, index) {
          return const SchedulerItem();
        },
    );
  }

}

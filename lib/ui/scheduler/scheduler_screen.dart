import 'package:flutter/material.dart';
import 'package:order_tennis/ui/scheduler/component/scheduler_list_view.dart';

class SchedulerScreen extends StatefulWidget {
  const SchedulerScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SchedulerState();
}

class _SchedulerState extends State<SchedulerScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('OrderTennis'),
      ),
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          const SchedulerListView(),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                  "Booking"
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/accordion.dart';
import '../../../../core/widgets/choice_chip_group.dart';
import '../../../../core/widgets/custom_calender.dart';

class PageOne extends StatefulWidget {
  final VoidCallback onTap;
  const PageOne({super.key, required this.onTap});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          ElevatedButton(
            onPressed: widget.onTap,
            child: const Text("button_1"),
          ),
          Gap(20.h),
          const ChoiceChipGroup(
            options: ["option1", "option2", "option3"],
          ),
          Gap(20.h),
          Accordion(
            title: "HR Requests",
            subtitle: "Choose a reason for your HR request",
            children: [
              ListTile(
                leading: const Icon(Icons.lock_clock, color: Colors.green),
                title: const Text("Late Permission"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.meeting_room, color: Colors.green),
                title: const Text("Early Leave"),
                onTap: () {},
              ),
            ],
          ),
          Gap(20.h),
          CustomCalendar(
            onDateRangeSelected: (startDate, endDate) {
              print(startDate);
              print(endDate);
            },
          ),
        ],
      ),
    );
  }
}

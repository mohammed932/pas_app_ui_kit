import 'package:flutter/material.dart';

import '../../../../../../core/theme/colors/colorspalette.dart';
import '../../../../../../core/widgets/common/attendance_card.dart';

class StickyList extends StatelessWidget {
  const StickyList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return AttendanceCard(
            title: "Mar 18, 2024",
            attendenceInfo: AttendenceInfo(
              startDate: "23 Jan 2024",
              duration: "3 Days",
              endDate: "23 Jan 2024",
            ),
            attendenceStatus: AttendenceStatus(
              label: "Late",
              color: PasColors.system.error200,
            ),
            attendenceRequest: AttendenceRequest(
              label: "",
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}

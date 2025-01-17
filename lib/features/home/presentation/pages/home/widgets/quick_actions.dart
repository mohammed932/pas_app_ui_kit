import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/widgets/cards/service_card.dart';
import '../../../../../../core/widgets/common/section_title.dart';
import '../../../../../../gen/assets.gen.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle.titleOnly(title: "Quick Actions"),
        Gap(10.0),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 16.0,
            crossAxisSpacing: 16.0,
            childAspectRatio: 1,
          ),
          itemCount: 6,
          itemBuilder: (context, index) {
            return ServiceCard(
              text: "HR Letter",
              icon: Assets.resources.icons.permission,
            );
          },
        )
      ],
    );
  }
}

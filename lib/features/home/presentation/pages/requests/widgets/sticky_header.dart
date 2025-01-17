import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../../../../core/theme/typography/pas_text_theme.dart';

class StickyHeader extends StatelessWidget {
  final String title;
  const StickyHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverPinnedHeader(
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        padding: EdgeInsets.only(bottom: 16.h),
        child: Text(
          title,
          style: PasTextTheme.of(context).heading2.bold(),
        ),
      ),
    );
  }
}

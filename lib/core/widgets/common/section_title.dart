import 'package:flutter/material.dart';
import 'package:pas_app/core/theme/colors/colorspalette.dart';

import '../../theme/typography/pas_text_theme.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final String? actionTitle;
  final VoidCallback? onTap;

  const SectionTitle._({
    required this.title,
    this.actionTitle,
    this.onTap,
  });

  // Factory constructor for title only
  factory SectionTitle.titleOnly({required String title}) {
    return SectionTitle._(title: title);
  }

  // Factory constructor for title with action
  factory SectionTitle.withAction({
    required String title,
    required String actionTitle,
    required VoidCallback onTap,
  }) {
    return SectionTitle._(
      title: title,
      actionTitle: actionTitle,
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: PasTextTheme.of(context).heading2.bold(),
        ),
        if (actionTitle != null)
          GestureDetector(
            onTap: onTap,
            child: Text(
              actionTitle!,
              style: PasTextTheme.of(context)
                  .medium
                  .semiBold(color: PasColors.primary.p300),
            ),
          ),
      ],
    );
  }
}

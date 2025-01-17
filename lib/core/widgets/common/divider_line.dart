import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/colors/colorspalette.dart';

class DividerLine extends StatelessWidget {
  const DividerLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: 10.h,
      decoration: BoxDecoration(
        color: PasColors.gray.g100,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

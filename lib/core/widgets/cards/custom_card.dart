import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCard extends StatelessWidget {
  final Widget child; // To allow custom content inside the card
  final EdgeInsetsGeometry? padding; // Optional padding

  const CustomCard({
    Key? key,
    required this.child, // Content of the card
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.all(16.0),
      margin: EdgeInsets.only(bottom: 16.h),
      decoration: BoxDecoration(
        color: Colors.white, // Background color of the card
        borderRadius: BorderRadius.circular(12), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1), // Shadow color
            blurRadius: 10, // Shadow blur
            offset: const Offset(0, 4), // Shadow offset
          ),
        ],
      ),
      child: child, // Child widget inside the card
    );
  }
}

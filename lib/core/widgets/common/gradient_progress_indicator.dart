import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class GradientProgressIndicator extends StatelessWidget {
  final double progress; // Progress value (0.0 to 1.0)

  const GradientProgressIndicator({
    Key? key,
    required this.progress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: LinearPercentIndicator(
        lineHeight: 10.0,
        animation: true,
        animationDuration: 1000, // 1 second animation duration
        percent: progress, // Progress value
        linearGradient: const LinearGradient(
          colors: [
            Color(0xFF66D2A8), // Light green
            Color(0xFF204E4A), // Dark green
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        backgroundColor: Colors.grey[300], // Background color
        barRadius: const Radius.circular(5), // Rounded corners
      ),
    );
  }
}

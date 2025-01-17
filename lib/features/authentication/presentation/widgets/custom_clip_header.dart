// Custom Clipper for Green Header

import 'package:flutter/material.dart';


class Clip extends StatelessWidget {
  const Clip({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class CustomHeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 50); // Move to bottom-left
    path.quadraticBezierTo(
      size.width / 2, // Control point X
      size.height, // Control point Y
      size.width, // End point X
      size.height - 50, // End point Y
    );
    path.lineTo(size.width, 0); // Move to top-right
    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

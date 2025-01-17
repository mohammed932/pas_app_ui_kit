import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/typography/pas_text_theme.dart';

class CurvedHeader extends StatelessWidget {
  final String title;
  final String imageUrl;
  final double height;
  const CurvedHeader({
    super.key,
    required this.title,
    required this.imageUrl,
    this.height = 300,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomHeaderClipper(),
      child: Container(
        height: height, // Adjust height as needed
        decoration: const BoxDecoration(
          color: Colors.green,
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CachedNetworkImage(
              imageUrl: imageUrl,
              width: 150.w,
            ),
            Text(
              title,
              style: PasTextTheme.of(context).heading1.bold(),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom Clipper for the Header
class CustomHeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 50); // Start bottom left
    path.quadraticBezierTo(
      size.width / 2, // Control point X
      size.height, // Control point Y
      size.width, // End point X
      size.height - 50, // End point Y
    );
    path.lineTo(size.width, 0); // Top right
    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false; // No need to reclip
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:gap/gap.dart';

// enum AppButtonType { filled, outlined }

// class AppButton extends StatelessWidget {
//   final String label;
//   final VoidCallback? onTap;
//   final AppButtonType type; // Determines the button type (filled/outlined)
//   final Color backgroundColor;
//   final Color textColor;
//   final Color borderColor;
//   final double borderRadius;
//   final EdgeInsets padding;
//   final Widget? leadingIcon;
//   final Widget? trailingIcon;
//   final bool isDisabled;

//   const AppButton({
//     super.key,
//     required this.label,
//     this.onTap,
//     this.type = AppButtonType.filled,
//     this.backgroundColor = Colors.green,
//     this.textColor = Colors.black,
//     this.borderColor = Colors.transparent,
//     this.borderRadius = 16.0,
//     this.padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
//     this.leadingIcon,
//     this.trailingIcon,
//     this.isDisabled = false,
//   });

//   /// Helper to get the resolved background color
//   Color getResolvedBackgroundColor() {
//     if (isDisabled) return Colors.grey;
//     return type == AppButtonType.outlined
//         ? Colors.transparent
//         : backgroundColor;
//   }

//   /// Helper to get the resolved text color
//   Color getResolvedTextColor() {
//     if (isDisabled) return Colors.white;
//     return type == AppButtonType.outlined ? borderColor : textColor;
//   }

//   /// Helper to get the resolved border color
//   Color getResolvedBorderColor() {
//     if (isDisabled) return Colors.grey;
//     return type == AppButtonType.outlined ? borderColor : Colors.transparent;
//   }

//   /// Helper method to resolve button style
//   ButtonStyle _resolveButtonStyle() {
//     return ElevatedButton.styleFrom(
//       backgroundColor: getResolvedBackgroundColor(),
//       foregroundColor: getResolvedTextColor(),
//       padding: padding,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(borderRadius),
//         side: BorderSide(
//             color: getResolvedBorderColor()), // Border for outlined buttons
//       ),
//       elevation: type == AppButtonType.filled
//           ? 4
//           : 0, // No elevation for outlined buttons
//     ).copyWith(
//       overlayColor: WidgetStateProperty.all(
//         isDisabled ? Colors.transparent : Colors.black.withOpacity(0.1),
//       ),
//       shadowColor: WidgetStateProperty.all(
//         isDisabled ? Colors.transparent : Colors.black.withOpacity(0.1),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: isDisabled ? null : onTap,
//       style: _resolveButtonStyle(),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           if (leadingIcon != null) ...[
//             leadingIcon!,
//             Gap(8.w),
//           ],
//           Text(
//             label,
//             style: const TextStyle(
//               fontSize: 16.0,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//           if (trailingIcon != null) ...[
//             Gap(8.w),
//             trailingIcon!,
//           ],
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

enum ButtonType {
  filled,
  outlined,
}

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final ButtonType type;
  final Widget? iconLeft;
  final Widget? iconRight;
  final Color? color;
  final double? borderRadius;
  final double? padding;

  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.type = ButtonType.filled,
    this.iconLeft,
    this.iconRight,
    this.color,
    this.borderRadius = 50.0,
    this.padding = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    final isFilled = type == ButtonType.filled;
    final buttonColor = color ?? Theme.of(context).primaryColor;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: isFilled ? 4 : 0,
        backgroundColor: isFilled ? buttonColor : Colors.transparent,
        side: isFilled ? null : BorderSide(color: buttonColor, width: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius!),
        ),
        padding: EdgeInsets.symmetric(horizontal: padding!, vertical: 12),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (iconLeft != null) ...[
            iconLeft!,
            const SizedBox(width: 8),
          ],
          Text(
            text,
            style: TextStyle(
              color: isFilled ? Colors.white : buttonColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (iconRight != null) ...[
            const SizedBox(width: 8),
            iconRight!,
          ],
        ],
      ),
    );
  }
}

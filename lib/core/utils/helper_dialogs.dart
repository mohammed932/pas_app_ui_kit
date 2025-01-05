import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';

class Dialogs {
  static void setIsLoading(BuildContext context, bool val) {
    if (val && !context.loaderOverlay.visible) {
      context.loaderOverlay.show();
    }

    if (!val && context.loaderOverlay.visible) {
      context.loaderOverlay.hide();
    }
  }

  static Future<void> showCustomDialog({
    required BuildContext context,
    required String title,
    required String content,
    String? confirmText,
    String? cancelText,
    VoidCallback? onConfirm,
    VoidCallback? onCancel,
  }) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          content: Text(content),
          actions: [
            if (cancelText != null)
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Close dialog
                  if (onCancel != null) onCancel();
                },
                child: Text(cancelText),
              ),
            if (confirmText != null)
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Close dialog
                  if (onConfirm != null) onConfirm();
                },
                child: Text(confirmText),
              ),
          ],
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/string_constants.dart';

class DialogHelper {
  static void showLoading({String message = 'Đang xử lý...'}) {
    Get.dialog(
      Dialog(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircularProgressIndicator(),
              const SizedBox(height: 16),
              Text(message),
            ],
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }

  static void hideLoading() {
    if (Get.isDialogOpen ?? false) {
      Get.back();
    }
  }

  static Future<bool> showConfirmation({
    String title = 'Xác nhận',
    required String message,
    String confirmText = StringConstants.ok,
    String cancelText = StringConstants.cancel,
  }) async {
    final result = await Get.dialog<bool>(
      AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Get.back(result: false),
            child: Text(cancelText),
          ),
          TextButton(
            onPressed: () => Get.back(result: true),
            child: Text(confirmText),
          ),
        ],
      ),
    );
    return result ?? false;
  }

  static void showError({
    String title = StringConstants.error,
    required String message,
    String buttonText = StringConstants.ok,
  }) {
    Get.dialog(
      AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(onPressed: () => Get.back(), child: Text(buttonText)),
        ],
      ),
    );
  }

  static void showSuccess({
    String title = StringConstants.success,
    required String message,
    String buttonText = StringConstants.ok,
    VoidCallback? onConfirm,
  }) {
    Get.dialog(
      AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Get.back();
              if (onConfirm != null) {
                onConfirm();
              }
            },
            child: Text(buttonText),
          ),
        ],
      ),
    );
  }

  static void showCustomDialog({
    required Widget content,
    bool barrierDismissible = true,
  }) {
    Get.dialog(Dialog(child: content), barrierDismissible: barrierDismissible);
  }

  static Future<T?> showBottomSheet<T>({
    required Widget content,
    bool isDismissible = true,
    bool enableDrag = true,
    Color? backgroundColor,
    double? elevation,
    ShapeBorder? shape,
    Color? barrierColor,
  }) async {
    return await Get.bottomSheet<T>(
      content,
      backgroundColor: backgroundColor ?? Colors.white,
      elevation: elevation,
      shape:
          shape ??
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          ),
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      barrierColor: barrierColor,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationHelper {
  static void navigateTo(Widget page) {
    Get.to(() => page);
  }

  static void navigateAndReplace(Widget page) {
    Get.off(() => page);
  }

  static void navigateAndRemoveAll(Widget page) {
    Get.offAll(() => page);
  }

  static void goBack() {
    Get.back();
  }

  static Future<T?> navigateWithResult<T>(Widget page) async {
    return await Get.to<T>(() => page);
  }

  static void navigateToNamed(
    String routeName, {
    Map<String, dynamic>? arguments,
  }) {
    Get.toNamed(routeName, arguments: arguments);
  }

  static void navigateAndReplaceNamed(
    String routeName, {
    Map<String, dynamic>? arguments,
  }) {
    Get.offNamed(routeName, arguments: arguments);
  }

  static void navigateAndRemoveAllNamed(
    String routeName, {
    Map<String, dynamic>? arguments,
  }) {
    Get.offAllNamed(routeName, arguments: arguments);
  }

  static T? getArgument<T>(String name) {
    return Get.arguments?[name] as T?;
  }

  static void openBottomSheet(Widget bottomSheet, {bool isDismissible = true}) {
    Get.bottomSheet(
      bottomSheet,
      isDismissible: isDismissible,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      backgroundColor: Colors.white,
    );
  }
}

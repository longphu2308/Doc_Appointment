import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app.dart';
import 'bindings/app_bindings.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Khởi tạo bindings
  final appBindings = AppBindings();
  appBindings.dependencies();

  runApp(const MyApp());
}

import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'util/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      theme: AppThemes.lightTheme, // Sử dụng theme ánh sáng
      darkTheme: AppThemes.darkTheme, // Sử dụng theme tối
      themeMode: ThemeMode.system, // Dựa trên cài đặt của hệ thống
      home: const HomeScreen(),
    );
  }
}

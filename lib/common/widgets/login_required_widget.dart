import 'package:flutter/material.dart';
import '../styles/app_colors.dart';
import '../styles/app_text_styles.dart';
import '../../screens/login_screen.dart';
import 'custom_button.dart';

class LoginRequiredWidget extends StatelessWidget {
  final String message;

  const LoginRequiredWidget({
    Key? key,
    this.message = 'Bạn cần đăng nhập để sử dụng tính năng này',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.lock_outline, size: 80, color: AppColors.primary),
            const SizedBox(height: 24),
            Text(
              message,
              style: AppTextStyle.bodyLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            CustomButton(
              text: 'Đăng nhập ngay',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              icon: Icons.login,
            ),
          ],
        ),
      ),
    );
  }
}

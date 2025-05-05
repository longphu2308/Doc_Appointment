import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../common/styles/app_colors.dart';
import '../common/styles/app_text_styles.dart';
import '../common/widgets/custom_button.dart';
import '../feature/account/controllers/account_controller.dart';
import 'login_screen.dart';
import 'register_screen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final accountController = Get.find<AccountController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tài khoản'),
        backgroundColor: AppColors.primary,
      ),
      body: Obx(() {
        if (!accountController.isLoggedIn.value) {
          return _buildNotLoggedInView(context);
        } else {
          return _buildLoggedInView(context, accountController);
        }
      }),
    );
  }

  Widget _buildNotLoggedInView(BuildContext context) {
    // Thay thế Center bằng SingleChildScrollView để tránh lỗi overflow
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          const Icon(
            Icons.account_circle,
            size: 100,
            color: AppColors.primary,
          ),
          const SizedBox(height: 24),
          const Text(
            'Chưa là thành viên?',
            style: AppTextStyle.heading2,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          const Text(
            'Đăng nhập để trải nghiệm đầy đủ các tính năng của ứng dụng',
            style: AppTextStyle.bodyLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
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
          const SizedBox(height: 16),
          CustomButton(
            text: 'Đăng ký tài khoản',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const RegisterScreen()),
              );
            },
            isOutlined: true,
            icon: Icons.person_add,
          ),
          const SizedBox(height: 48),
          _buildAccountMenuItem(
            context,
            icon: Icons.policy,
            title: 'Điều khoản và quy định',
            onTap: () {},
          ),
          _buildAccountMenuItem(
            context,
            icon: Icons.people,
            title: 'Tham gia cộng động',
            onTap: () {},
          ),
          _buildAccountMenuItem(
            context,
            icon: Icons.share,
            title: 'Chia sẻ ứng dụng',
            onTap: () {},
          ),
          _buildAccountMenuItem(
            context,
            icon: Icons.support_agent,
            title: 'Liên hệ và hỗ trợ',
            onTap: () {},
          ),
          _buildAccountMenuItem(
            context,
            icon: Icons.settings,
            title: 'Cài đặt',
            onTap: () {},
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildLoggedInView(
    BuildContext context,
    AccountController controller,
  ) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        // User info card
        Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundColor: AppColors.primaryLight,
                  child: Icon(Icons.person, size: 40, color: AppColors.primary),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        controller.currentUser.value?.name ?? 'Người dùng',
                        style: AppTextStyle.heading3,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        controller.currentUser.value?.email ??
                            'Email chưa cập nhật',
                        style: AppTextStyle.bodyMedium,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        controller.currentUser.value?.phone ??
                            'Chưa cập nhật số điện thoại',
                        style: AppTextStyle.bodySmall,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.edit, color: AppColors.primary),
                  onPressed: () {
                    // Navigate to edit profile
                  },
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 24),

        // Menu items
        const Text('Tài khoản của tôi', style: AppTextStyle.heading3),
        const SizedBox(height: 8),
        _buildAccountMenuItem(
          context,
          icon: Icons.medical_services,
          title: 'Hồ sơ y tế',
          onTap: () {},
        ),
        _buildAccountMenuItem(
          context,
          icon: Icons.favorite,
          title: 'Danh sách quan tâm',
          onTap: () {},
        ),

        const SizedBox(height: 24),

        const Text('Cài đặt & Hỗ trợ', style: AppTextStyle.heading3),
        const SizedBox(height: 8),
        _buildAccountMenuItem(
          context,
          icon: Icons.policy,
          title: 'Điều khoản và quy định',
          onTap: () {},
        ),
        _buildAccountMenuItem(
          context,
          icon: Icons.people,
          title: 'Tham gia cộng động',
          onTap: () {},
        ),
        _buildAccountMenuItem(
          context,
          icon: Icons.share,
          title: 'Chia sẻ ứng dụng',
          onTap: () {},
        ),
        _buildAccountMenuItem(
          context,
          icon: Icons.support_agent,
          title: 'Liên hệ và hỗ trợ',
          onTap: () {},
        ),
        _buildAccountMenuItem(
          context,
          icon: Icons.settings,
          title: 'Cài đặt',
          onTap: () {},
        ),

        const SizedBox(height: 24),

        CustomButton(
          text: 'Đăng xuất',
          onPressed: () async {
            await controller.logout();
          },
          icon: Icons.logout,
        ),
      ],
    );
  }

  Widget _buildAccountMenuItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 0,
      color: Colors.transparent,
      child: ListTile(
        leading: Icon(icon, color: AppColors.primary),
        title: Text(title, style: AppTextStyle.bodyLarge),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }
}

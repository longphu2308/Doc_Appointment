import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../common/styles/app_colors.dart';
import '../common/styles/app_text_styles.dart';
import '../common/styles/appbar_style.dart';
import '../feature/home/controllers/home_controller.dart';
import 'login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    // Thêm chức năng chuyển đến trang đăng nhập khi nhấn vào user icon
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginScreen()),
                    );
                  },
                  child: Row(
                    children: [
                      const Icon(
                        Icons.account_circle_outlined, 
                        color: AppColors.primary, 
                        size: 28,
                      ),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Xin chào', style: AppBarStyles.bodyLargeDark),
                          const SizedBox(height: 4),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const LoginScreen()),
                              );
                            },
                            child: Text(
                              'Đăng ký / Đăng nhập',
                              style: AppBarStyles.bodyMediumDark,
                              // Xóa thuộc tính gạch chân
                              // .copyWith(decoration: TextDecoration.underline),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(
                    Icons.notifications_outlined, 
                    color: AppColors.primary,
                    size: 28,
                  ),
                  onPressed: () {
                    // Xử lý thông báo
                  },
                ),
              ],
            ),
            const SizedBox(height: 12),
            TextField(
              style: AppBarStyles.bodySmallDark,
              decoration: InputDecoration(
                hintText: 'Tên bác sĩ, triệu chứng bệnh, chuyên khoa...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: AppColors.primary),
                ),
                prefixIcon: const Icon(Icons.search, color: AppColors.primary),
                contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
                fillColor: AppColors.surface,
                filled: true,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Services Section
          Container(
            decoration: BoxDecoration(
              color: AppColors.cardBackground,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Dịch vụ',
                  style: AppTextStyle.heading2,
                ),
                const SizedBox(height: 20),
                // ROW 1
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildServiceItem(
                      'Đặt khám\nbác sĩ',
                      Icons.medical_services,
                      () {},
                      size,
                    ),
                    _buildServiceItem(
                      'Khám theo\nchuyên khoa',
                      Icons.medication,
                      () {},
                      size,
                    ),
                    _buildServiceItem(
                      'Chat với\nbác sĩ',
                      Icons.chat_bubble_outline,
                      () {},
                      size,
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                // ROW 2
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildServiceItem(
                      'Gọi video\nvới bác sĩ',
                      Icons.videocam_outlined,
                      () {},
                      size,
                    ),
                    _buildServiceItem(
                      'Kết quả\nkhám',
                      Icons.description_outlined,
                      () {},
                      size,
                    ),
                    _buildServiceItem(
                      'Đặt lịch\ntiêm chủng',
                      Icons.shield_outlined,
                      () {},
                      size,
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                // ROW 3
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildServiceItem(
                      'Đặt lịch\nxét nghiệm',
                      Icons.science_outlined,
                      () {},
                      size,
                    ),
                    _buildServiceItem(
                      'Cộng đồng',
                      Icons.people_outline,
                      () {},
                      size,
                    ),
                    const SizedBox(width: 90), // Empty space for balance
                  ],
                ),
              ],
            ),
          ),
          
          const SizedBox(height: 24),
          
          // Doctors Section
          Container(
            decoration: BoxDecoration(
              color: AppColors.cardBackground,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'Bác sĩ',
                      style: AppTextStyle.heading2,
                    ),
                    const Spacer(),
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Text(
                        'Xem tất cả',
                        style: TextStyle(color: AppColors.primary, fontSize: 15),
                      ),
                      label: const Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                SizedBox(
                  height: 160,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 120,
                        margin: const EdgeInsets.only(right: 16),
                        child: Column(
                          children: [
                            const CircleAvatar(
                              radius: 50,
                              backgroundColor: AppColors.primaryLight,
                              child: Icon(
                                Icons.person,
                                size: 55,
                                color: AppColors.primary,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Bác sĩ ${index + 1}',
                              style: AppTextStyle.bodyMedium.copyWith(
                                fontWeight: FontWeight.w600
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          
          const SizedBox(height: 24),
          
          // Specialties Section
          Container(
            decoration: BoxDecoration(
              color: AppColors.cardBackground,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'Chuyên khoa',
                      style: AppTextStyle.heading2,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 0.9,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 16,
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    final specialties = [
                      'Tim mạch',
                      'Nhi khoa',
                      'Da liễu',
                      'Thần kinh',
                      'Tiêu hóa',
                      'Cơ xương khớp',
                    ];
                    
                    final icons = [
                      Icons.favorite_border,
                      Icons.child_care,
                      Icons.face,
                      Icons.psychology,
                      Icons.medical_services_outlined,
                      Icons.accessibility_new,
                    ];
                    
                    return _buildSpecialtyItem(
                      specialties[index],
                      icons[index],
                      () {},
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildServiceItem(
    String title, 
    IconData iconData, 
    VoidCallback onTap,
    Size size,
  ) {
    final itemWidth = (size.width - 100) / 3;
    final iconSize = itemWidth * 0.5;
    
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: SizedBox(
        width: itemWidth,
        child: Column(
          children: [
            Container(
              width: iconSize + 20,
              height: iconSize + 20,
              decoration: BoxDecoration(
                color: AppColors.primaryLight.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Icon(
                iconData,
                size: iconSize,
                color: AppColors.primary,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              height: 40, // Thiết lập chiều cao cố định cho text
              alignment: Alignment.center,
              child: Text(
                title,
                style: AppTextStyle.bodySmall,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildSpecialtyItem(
    String name,
    IconData icon,
    VoidCallback onTap,
  ) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: AppColors.primaryLight.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              size: 40,
              color: AppColors.primary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: AppTextStyle.bodyMedium.copyWith(
              fontWeight: FontWeight.w500
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

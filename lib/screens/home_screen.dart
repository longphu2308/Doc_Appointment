import 'package:doc_appointment/util/theme/appbar_style.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        title: Column(
          children: [
            Row(
              children: [
                const Icon(Icons.account_circle_outlined),
                const SizedBox(width: 8),
                Column(
                  children: [
                    const Text('Hello', style: AppBarStyles.bodyLargeDark),
                    const SizedBox(height: 4),
                    Text(
                      'Đăng ký / Đăng nhập',
                      style: AppBarStyles.bodyMediumDark,
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.notifications_outlined),
                  onPressed: () {
                    // Handle notification button press
                  },
                ),
              ],
            ),
            const SizedBox(height: 4),
            TextField(
              style: AppBarStyles.bodySmallDark,
              decoration: InputDecoration(
                hintText: 'Tên bác sĩ, triệu chứng bệnh, chuyên khoa...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.blue),
                ),
                prefixIcon: const Icon(Icons.search), // Giảm chiều cao
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Column(
                children: [
                  //ROW 1
                  Row(
                    children: [
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/icons/doctor.png',
                              width: 70,
                              height: 70,
                            ),
                          ),
                          const Text(
                            'Đặt khám bác sĩ',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/icons/doctor2.png',
                              width: 70,
                              height: 70,
                            ),
                          ),
                          const Text(
                            'Đặt khám phòng khám',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/icons/hospital.png',
                              width: 70,
                              height: 70,
                            ),
                          ),
                          const Text(
                            'Đặt khám bệnh viện',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                  //ROW 2
                  Row(
                    children: [
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/icons/chat.png',
                              width: 70,
                              height: 70,
                            ),
                          ),
                          const Text(
                            'Chat với bác sĩ',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/icons/video-call.png',
                              width: 70,
                              height: 70,
                            ),
                          ),
                          const Text(
                            'Gọi video với bác sĩ',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/icons/result.png',
                              width: 70,
                              height: 70,
                            ),
                          ),
                          const Text(
                            'Kết quả khám',
                            maxLines: 2,
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                  //ROW 3
                  Row(
                    children: [
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/icons/shield.png',
                              width: 70,
                              height: 70,
                            ),
                          ),
                          const Text(
                            'Đặt lịch tiêm chủng',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/icons/microscope.png',
                              width: 70,
                              height: 70,
                            ),
                          ),
                          const Text(
                            'Đặt lịch xét nghiệm',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/icons/community.png',
                              width: 70,
                              height: 70,
                            ),
                          ),
                          const Text(
                            'Cộng đồng',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          // Bác sĩ
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    const Text(
                      'Bác sĩ',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    const Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
              SizedBox(
                height: 120, // Đặt chiều cao cho danh sách ngang
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10, // Số lượng mục trong danh sách
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/icons/doctor.png',
                              width: 70,
                              height: 70,
                            ),
                          ),
                          Text(
                            'Bác sĩ A',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Tìm kiếm',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Tài khoản',
          ),
        ],
        selectedItemColor: Colors.blue, // Màu khi được chọn
        unselectedItemColor: Colors.grey, // Màu khi không được chọn
        backgroundColor: Colors.white, // Màu nền
      ),
    );
  }
}

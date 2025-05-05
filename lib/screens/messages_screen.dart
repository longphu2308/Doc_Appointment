import 'package:flutter/material.dart';
import '../common/widgets/login_required_widget.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // For now this always shows the login required widget
    // In a real app, you would check if the user is logged in
    return const Scaffold(
      body: LoginRequiredWidget(
        message: 'Bạn cần đăng nhập để xem tin nhắn của mình',
      ),
    );
  }
}

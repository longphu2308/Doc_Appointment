import '../../feature/account/models/user_model.dart';

class AuthService {
  UserModel? _currentUser;

  UserModel? get currentUser => _currentUser;
  bool get isLoggedIn => _currentUser?.isLoggedIn ?? false;

  AuthService() {
    // Initialize with guest user
    _currentUser = UserModel.guest();
  }

  Future<bool> login(String email, String password) async {
    // Simulate API call
    await Future.delayed(const Duration(seconds: 2));

    // For demo, just check if email and password are not empty
    if (email.isNotEmpty && password.isNotEmpty) {
      _currentUser = UserModel(
        id: '1',
        name: 'Người dùng',
        email: email,
        phone: '0123456789',
        avatar: null,
        isLoggedIn: true,
      );
      return true;
    }
    return false;
  }

  Future<void> logout() async {
    await Future.delayed(const Duration(milliseconds: 500));
    _currentUser = UserModel.guest();
  }

  Future<bool> register(String name, String email, String password) async {
    // Simulate API call
    await Future.delayed(const Duration(seconds: 2));

    // For demo, just check if all fields are not empty
    if (name.isNotEmpty && email.isNotEmpty && password.isNotEmpty) {
      _currentUser = UserModel(
        id: '1',
        name: name,
        email: email,
        phone: null,
        avatar: null,
        isLoggedIn: true,
      );
      return true;
    }
    return false;
  }
}

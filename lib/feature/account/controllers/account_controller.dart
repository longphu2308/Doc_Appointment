import 'package:get/get.dart';
import '../../../data/services/auth_service.dart';
import '../models/user_model.dart';

class AccountController extends GetxController {
  final _authService = Get.put(AuthService());

  Rx<UserModel?> currentUser = Rx<UserModel?>(null);
  RxBool isLoggedIn = false.obs;

  @override
  void onInit() {
    super.onInit();
    currentUser.value = _authService.currentUser;
    isLoggedIn.value = _authService.isLoggedIn;
  }

  Future<bool> login(String email, String password) async {
    final result = await _authService.login(email, password);
    if (result) {
      currentUser.value = _authService.currentUser;
      isLoggedIn.value = true;
    }
    return result;
  }

  Future<void> logout() async {
    await _authService.logout();
    currentUser.value = _authService.currentUser;
    isLoggedIn.value = false;
  }

  Future<bool> register(String name, String email, String password) async {
    final result = await _authService.register(name, email, password);
    if (result) {
      currentUser.value = _authService.currentUser;
      isLoggedIn.value = true;
    }
    return result;
  }
}

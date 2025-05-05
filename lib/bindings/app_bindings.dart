import 'package:get/get.dart';
import '../data/services/auth_service.dart';
import '../feature/account/controllers/account_controller.dart';
import '../feature/home/controllers/home_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    // Services
    Get.put(AuthService(), permanent: true);

    // Controllers
    Get.put(HomeController());
    Get.put(AccountController());
  }
}

import 'package:chat_application/common/routes/names.dart';
import 'package:chat_application/common/services/services.dart';
import 'package:chat_application/common/store/config.dart';
import 'package:chat_application/pages/welcome/index.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  final state = WelcomeSate();
  WelcomeController();

  changePage(int index) async {
    state.index.value = index;
  }

  handleSign() async {
    await ConfigStore.to.saveAlreadyOpen();
    Get.offAllNamed(AppRoutes.SIGN_IN);
  }
}

import 'package:chat_application/pages/welcome/index.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController{
  final state = WelcomeSate();
  WelcomeController();

  changePage(int index)async{
    state.index.value = index;
  }
}

// ignore_for_file: prefer_final_fields

import 'package:get/get.dart';

class ApplicationSate {
  RxInt _page = 0.obs;

  int get page => _page.value;

  set page(value) => _page.value = value;
}

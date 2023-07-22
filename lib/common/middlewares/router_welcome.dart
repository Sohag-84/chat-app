// ignore_for_file: overridden_fields, prefer_const_constructors, avoid_print

import 'package:chat_application/common/routes/routes.dart';
import 'package:chat_application/common/store/store.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class RouteWelcomeMiddleware extends GetMiddleware {
  // priority
  @override
  int? priority = 0;

  RouteWelcomeMiddleware({required this.priority});

  @override
  RouteSettings? redirect(String? route) {
    print(ConfigStore.to.isFirstOpen);
    if (ConfigStore.to.isFirstOpen == false) {
      return null;
    } else if (UserStore.to.isLogin == true) {
      return RouteSettings(name: AppRoutes.Application);
    } else {
      return RouteSettings(name: AppRoutes.SIGN_IN);
    }
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:chat_application/common/routes/names.dart';
import 'package:chat_application/common/store/user.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

/// 检查是否登录
class RouteAuthMiddleware extends GetMiddleware {
  // priority 数字小优先级高
  @override
  int? priority = 0;

  RouteAuthMiddleware({required this.priority});

  @override
  RouteSettings? redirect(String? route) {
    if (UserStore.to.isLogin ||
        route == AppRoutes.SIGN_IN ||
        route == AppRoutes.INITIAL) {
      return null;
    } else {
      Future.delayed(
        Duration(seconds: 1),
        () => Get.snackbar("提示", "登录过期,请重新登录"),
      );
      return RouteSettings(name: AppRoutes.SIGN_IN);
    }
  }
}

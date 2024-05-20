import 'package:auto_route/auto_route.dart';
import 'package:close_ai/core/route/app_router.dart';
import 'package:close_ai/utlis/uihelper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AppUtils {
  static void unfocusKeyboard(BuildContext context) {
    final currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus!.unfocus();
    }
  }

  static Future<void> logout(BuildContext context) async {
    UiHelper.showloaderdialog(context);
    await FirebaseAuth.instance.signOut();
    Future.delayed(
      const Duration(seconds: 1),
      () {
        AutoRouter.of(context).replace(const LoginRoute());
      },
    );
  }
}

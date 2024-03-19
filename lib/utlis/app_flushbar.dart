import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:close_ai/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppFlushbar {
  static Flushbar<dynamic>? flushbar;
  static Future<void> error(
    BuildContext context, {
    String message = 'Error',
    String? title,
    void Function()? onRetry,
  }) async {
    // TODO(Rochak): Handle already showing
    // final isShowing = flushbar?.isShowing();

    // if (isShowing ?? false) {
    //   await dissmiss();
    // }
    flushbar = Flushbar(
      title: title,
      titleColor: Colors.white,
      message: message,
      flushbarPosition: FlushbarPosition.TOP,
      reverseAnimationCurve: Curves.decelerate,
      forwardAnimationCurve: Curves.elasticOut,
      boxShadows: const [
        BoxShadow(color: Colors.blue, offset: Offset(0, 2), blurRadius: 3),
      ],
      backgroundGradient: const LinearGradient(
        colors: [
          Color.fromARGB(255, 255, 17, 0),
          Color.fromARGB(255, 242, 104, 77),
        ],
      ),
      duration: const Duration(seconds: 4),
      icon: const Icon(
        Icons.error_outline_outlined,
        color: AppColors.colorWhite,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      borderRadius: BorderRadius.circular(20),
      mainButton: Row(
        children: [
          if (onRetry != null)
            IconButton(
              onPressed: () {
                dissmiss();
                onRetry.call();
              },
              icon: const Icon(
                Icons.refresh,
                color: AppColors.colorWhite,
              ),
            ),
          const IconButton(
            onPressed: dissmiss,
            icon: Icon(
              Icons.close,
              color: AppColors.colorWhite,
            ),
          ),
        ],
      ),
    );
    flushbar?.show(context);
  }

  static Future<void> success(
    BuildContext context, {
    String message = 'Success',
    String? title,
  }) async {
    // TODO(Rochak): Handle already showing
    // final isShowing = flushbar?.isShowing();

    // if (isShowing ?? false) {
    //   await dissmiss();
    // }
    flushbar = Flushbar(
      title: title,
      titleColor: Colors.white,
      message: message,
      flushbarPosition: FlushbarPosition.TOP,
      reverseAnimationCurve: Curves.decelerate,
      forwardAnimationCurve: Curves.elasticOut,
      boxShadows: const [
        BoxShadow(color: Colors.blue, offset: Offset(0, 2), blurRadius: 3),
      ],
      backgroundGradient: const LinearGradient(
        colors: [
          Color.fromARGB(255, 16, 152, 1),
          Color.fromARGB(255, 104, 201, 94),
        ],
      ),
      duration: const Duration(seconds: 4),
      icon: const Icon(
        Icons.check_circle_outline,
        color: AppColors.colorWhite,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      borderRadius: BorderRadius.circular(20),
      mainButton: const IconButton(
        onPressed: dissmiss,
        icon: Icon(
          Icons.close,
          color: AppColors.colorWhite,
        ),
      ),
    );
    flushbar?.show(context);
  }

  static Future<void> dissmiss() async {
    await flushbar?.dismiss();
  }

  static void information(
    BuildContext context, {
    required String message,
    String? title,
  }) {
    FlushbarHelper.createInformation(message: message, title: title)
        .show(context);
  }
}

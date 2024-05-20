import 'package:close_ai/constants/app_colors.dart';
import 'package:close_ai/features/common/app_loading_widget.dart';
import 'package:close_ai/features/common/app_spacing.dart';
import 'package:flutter/material.dart';

class UiHelper {
  static void showloaderdialog(BuildContext context, {bool canPop = false}) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Center(
          child: Material(
            borderRadius: BorderRadius.circular(20),
            elevation: 12,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
              decoration: BoxDecoration(
                color: AppColors.colorWhite,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppLoadingWidget.small(),
                  HorizontalSpacing(8),
                  Text('Please wait...'),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}


  // static void dialogAnimation(
  //   BuildContext context, {
  //   required String lottieAsset,
  //   Duration duration = const Duration(seconds: 5),
  //   double? size,
  //   bool repeat = true,
  // }) {
  //   Get.dialog(
  //     barrierColor: AppColors.surfaceTint.withOpacity(0.5),
  //     PopScope(
  //       canPop: false,
  //       child: Align(
  //         child: Lottie.asset(
  //           repeat: repeat,
  //           height: size,
  //           width: size,
  //           lottieAsset,
  //           errorBuilder: (context, error, stackTrace) =>
  //               const SizedBox.shrink(),
  //           alignment: Alignment.center,
  //         ),
  //       ),
  //     ),
  //   );

  //   Future.delayed(
  //     duration,
  //     () {
  //       Navigator.pop(context);
  //     },
  //   );
  // }

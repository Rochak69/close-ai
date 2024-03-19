import 'package:close_ai/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class AppLoadingWidget extends StatelessWidget {
  const AppLoadingWidget({
    super.key,
    this.size = 52,
    this.color = AppColors.primaryDark,
  });
  const AppLoadingWidget.small({
    super.key,
    this.size = 28,
    this.color = AppColors.primaryDark,
  });
  final double size;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return LoadingAnimationWidget.halfTriangleDot(
      color: color,
      size: size,
    );
  }
}

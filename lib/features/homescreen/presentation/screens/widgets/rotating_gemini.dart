import 'package:close_ai/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';

class RotatinGemini extends StatelessWidget {
  const RotatinGemini({
    super.key,
    this.duration = Durations.extralong4,
    this.width = 28,
  });
  const RotatinGemini.large({
    super.key,
    this.duration = const Duration(milliseconds: 1800),
    this.width = 60,
  });
  final Duration duration;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AppImages.geimini,
      width: width,
    )
        .animate(
          onPlay: (controller) => controller.repeat(),
        )
        .rotate(duration: duration);
  }
}

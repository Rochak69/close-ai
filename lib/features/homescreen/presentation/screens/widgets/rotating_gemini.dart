import 'package:close_ai/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';

class RotatinGemini extends StatelessWidget {
  const RotatinGemini({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AppImages.geimini,
      width: 24,
    )
        .animate(
          onPlay: (controller) => controller.repeat(),
        )
        .rotate(duration: Durations.extralong4);
  }
}

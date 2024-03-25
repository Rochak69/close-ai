import 'package:close_ai/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SocialIconButton extends StatelessWidget {
  const SocialIconButton({
    required this.iconPng,
    required this.onTap,
    super.key,
  });
  final String iconPng;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 60,
          width: 60,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.primaryDark,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          child: Image.asset(
            iconPng,
            width: 28,
          ),
        ),
      ),
    );
  }
}

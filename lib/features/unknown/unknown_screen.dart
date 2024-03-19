import 'package:auto_route/auto_route.dart';
import 'package:close_ai/constants/app_colors.dart';
import 'package:close_ai/features/common/app_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UnknownScreen extends StatelessWidget {
  const UnknownScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(),
      body: Container(
        color: AppColors.primaryDark,
      ),
    );
  }
}

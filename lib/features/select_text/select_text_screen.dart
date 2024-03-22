import 'package:auto_route/auto_route.dart';
import 'package:close_ai/constants/app_colors.dart';
import 'package:close_ai/features/common/app_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SelectTextScreen extends StatelessWidget {
  const SelectTextScreen({required this.text, super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        leading: IconButton(
          onPressed: () {
            AutoRouter.of(context).maybePop();
          },
          icon: const Icon(Icons.close),
        ),
        title: const Text(
          'Select Text',
        ),
      ),
      body: SelectionArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child: Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:close_ai/constants/app_colors.dart';
import 'package:close_ai/core/firestore/app_firestore.dart';
import 'package:close_ai/core/route/app_router.dart';
import 'package:close_ai/enum/gemini_model_enum.dart';
import 'package:close_ai/features/change_password/presentation/bloc/change_password_bloc.dart';
import 'package:close_ai/features/common/app_scaffold.dart';
import 'package:close_ai/features/drawer/presentation/bloc/drawer_bloc.dart';
import 'package:close_ai/features/homescreen/presentation/bloc/home_bloc.dart';
import 'package:close_ai/utlis/app_globals.dart';
import 'package:close_ai/utlis/helper.dart';
import 'package:close_ai/utlis/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            ListTile(
              title: const Text('Forgot Password?'),
              onTap: () {
                AutoRouter.of(context).push(const ChangePasswordRoute());
              },
              trailing: const Icon(Icons.change_circle),
            ),
            const Divider(),
            ListTile(
              title: const Text('Clear All Conversations'),
              onTap: () async {
                UiHelper.showloaderdialog(context);

                await AppFirestore.conversationDocument(AppGlobals.uuid)
                    .delete();

                if (context.mounted) {
                  BlocProvider.of<DrawerBloc>(context)
                      .add(const DrawerEvent.getChatHistory());
                  BlocProvider.of<HomeBloc>(context).add(
                    const HomeEvent.switchModel(
                      modelEnum: GeminiModelEnum.text,
                    ),
                  );
                  Navigator.pop(context);
                }
              },
              trailing: const Icon(
                Icons.delete_forever_sharp,
                color: AppColors.colorRed,
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text('Logout'),
              onTap: () {
                AppUtils.logout(context);
              },
              trailing: const Icon(Icons.logout),
            ),
          ],
        ),
      ),
    );
  }
}

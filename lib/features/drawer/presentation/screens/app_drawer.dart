import 'package:auto_route/auto_route.dart';
import 'package:close_ai/constants/app_colors.dart';
import 'package:close_ai/core/route/app_router.dart';
import 'package:close_ai/enum/gemini_model_enum.dart';
import 'package:close_ai/features/drawer/presentation/bloc/drawer_bloc.dart';
import 'package:close_ai/features/homescreen/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DrawerBloc, DrawerState>(
      builder: (context, state) {
        return Drawer(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  height: 40,
                  child: const Text(
                    'Rochak Shrestha',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
                const Divider(),
                ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<DrawerBloc>(context)
                        .add(const DrawerEvent.getChatHistory());
                  },
                  child: const Text('Get Chat History'),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pop(context);
                    BlocProvider.of<HomeBloc>(context).add(
                      const HomeEvent.switchModel(
                        modelEnum: GeminiModelEnum.text,
                      ),
                    );
                  },
                  leading: const Icon(Icons.chat_outlined),
                  title: const Text('Chat with Gemini'),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pop(context);
                    BlocProvider.of<HomeBloc>(context).add(
                      const HomeEvent.switchModel(
                        modelEnum: GeminiModelEnum.image,
                      ),
                    );
                  },
                  leading: const Icon(Icons.image_outlined),
                  title: const Text('Image Prompt with Gemini'),
                ),
                const Divider(),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Conversation history',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) => Column(
                      children: [
                        ListTile(
                          style: ListTileStyle.drawer,
                          onTap: () {
                            Navigator.pop(context);
                            BlocProvider.of<HomeBloc>(context)
                                .add(const HomeEvent.selectChat(id: 1));
                          },
                          title: Text(state.allhistory?[index].title ?? ''),
                        ),
                        if (index != state.allhistory!.length - 1)
                          Container(
                            width: double.infinity,
                            color: AppColors.primaryDark,
                            height: 1,
                          ),
                      ],
                    ),
                    itemCount: state.allhistory?.length ?? 0,
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  onTap: () {
                    Navigator.pop(context);
                    AutoRouter.of(context).replace(const LoginRoute());
                  },
                  title: const Text('Logout'),
                  trailing: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.settings_outlined,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

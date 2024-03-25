import 'package:auto_route/auto_route.dart';
import 'package:close_ai/constants/app_colors.dart';
import 'package:close_ai/core/route/app_router.dart';
import 'package:close_ai/enum/gemini_model_enum.dart';
import 'package:close_ai/features/drawer/presentation/bloc/drawer_bloc.dart';
import 'package:close_ai/features/homescreen/presentation/bloc/home_bloc.dart';
import 'package:close_ai/utlis/app_globals.dart';
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
                  child: Text(
                    AppGlobals.userEmail,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Divider(),
                // ElevatedButton(
                //   onPressed: () async {
                //     const content = ContentResponse(
                //       image: 'asdasasd',
                //       role: 'mosadel',
                //       text: 'Chat 2',
                //     );
                //     final conversationCollection = <String, dynamic>{
                //       'data': [
                //         const ConversationResponse(
                //           id: '0',
                //           title: 'Conversation three',
                //         ).toJson(),
                //         const ConversationResponse(
                //           id: '1',
                //           title: 'Conversation four',
                //         ).toJson(),
                //         const ConversationResponse(
                //           id: '2',
                //           title: 'Conversation five',
                //         ).toJson(),
                //         const ConversationResponse(
                //           id: '3',
                //           title: 'Conversation six',
                //         ).toJson(),
                //         const ConversationResponse(
                //           id: '4',
                //           title: 'Conversatation One',
                //         ).toJson(),
                //         const ConversationResponse(
                //           id: '5',
                //           title: 'Conversation two',
                //         ).toJson(),
                //       ],
                //     };
                //     final chatCollection = <String, dynamic>{
                //       'data': [
                //         const ContentResponse(
                //           image: 'image 1',
                //           role: 'user',
                //           text: 'This is a text 1',
                //         ).toJson(),
                //         const ContentResponse(
                //           image: 'image 2',
                //           role: 'model',
                //           text: 'This is a text 2',
                //         ).toJson(),
                //         const ContentResponse(
                //           image: 'image 2',
                //           role: 'user',
                //           text: 'This is a text 3',
                //         ).toJson(),
                //         const ContentResponse(
                //           image: 'image 2',
                //           role: 'model',
                //           text: 'This is a text 4',
                //         ).toJson(),
                //       ],
                //     };

                //     await AppFirestore.conversationCollection()
                //         .doc('Rochak')
                //         .set(conversationCollection);
                //     final conversation =
                //         await AppFirestore.conversationCollection()
                //             .doc('Rochak')
                //             .get();
                //     final conversationData = conversation.data();
                //     final coversationId = conversationData?['data'][0]['id'];
                //     await AppFirestore.chatDocument(coversationId)
                //         .update(chatCollection);
                //     final chat =
                //         await AppFirestore.chatDocument(coversationId).get();
                //     final chatData = chat.data();
                //     final a = 2;
                //   },
                //   child: const Text('Set data'),
                // ),
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
                  title: const Text('New Chat'),
                ),
                // ListTile(
                //   onTap: () {
                //     Navigator.pop(context);
                //     BlocProvider.of<HomeBloc>(context).add(
                //       const HomeEvent.switchModel(
                //         modelEnum: GeminiModelEnum.image,
                //       ),
                //     );
                //   },
                //   leading: const Icon(Icons.image_outlined),
                //   title: const Text('New Image Prompt'),
                // ),
                const Divider(),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Conversation history',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () async {
                      BlocProvider.of<DrawerBloc>(context)
                          .add(const DrawerEvent.getChatHistory());
                    },
                    child: ListView.builder(
                      itemBuilder: (context, index) => Column(
                        children: [
                          ListTile(
                            style: ListTileStyle.drawer,
                            onTap: () {
                              Navigator.pop(context);
                              BlocProvider.of<HomeBloc>(context).add(
                                HomeEvent.selectChat(
                                  id: state.conversationHistory?[index].id ??
                                      '',
                                  title:
                                      state.conversationHistory?[index].title ??
                                          '',
                                ),
                              );
                            },
                            title: Text(
                              state.conversationHistory?[index].title ?? '',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          if (index != state.conversationHistory!.length - 1)
                            Container(
                              width: double.infinity,
                              color: AppColors.primaryDark,
                              height: 1,
                            ),
                        ],
                      ),
                      itemCount: state.conversationHistory?.length ?? 0,
                    ),
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

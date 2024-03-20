import 'package:auto_route/auto_route.dart';
import 'package:close_ai/constants/app_colors.dart';
import 'package:close_ai/constants/app_images.dart';
import 'package:close_ai/core/route/app_router.dart';
import 'package:close_ai/features/common/app_scaffold.dart';
import 'package:close_ai/features/common/app_spacing.dart';
import 'package:close_ai/features/common/gemini_input_field.dart';
import 'package:close_ai/features/homescreen/presentation/bloc/home_bloc.dart';
import 'package:close_ai/utlis/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_validator/form_validator.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool hidePassword = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  late ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  TextEditingController controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: AppScaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primary,
          title: const Text('Chat Gemini'),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              const DrawerHeader(child: Text('Rochak Shrestha')),
              ListTile(
                leading: const Icon(Icons.logout),
                onTap: () {
                  Navigator.pop(context);
                  AutoRouter.of(context).replace(const LoginRoute());
                },
                title: const Text('Logout'),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Column(
                children: [
                  Expanded(
                    child: BlocConsumer<HomeBloc, HomeState>(
                      listener: (context, state) {},
                      builder: (context, state) {
                        final reversedChat =
                            state.chathistory?.reversed.toList();
                        return ColoredBox(
                          color: Theme.of(context).canvasColor,
                          child: ListView.separated(
                            controller: _scrollController,
                            shrinkWrap: true,
                            reverse: true,
                            keyboardDismissBehavior:
                                ScrollViewKeyboardDismissBehavior.onDrag,
                            padding:
                                const EdgeInsets.only(top: 16, bottom: 100),
                            itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 6,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    textDirection:
                                        reversedChat?[index].role == 'model'
                                            ? null
                                            : TextDirection.rtl,
                                    children: [
                                      if (reversedChat?[index].role == 'model')
                                        SvgPicture.asset(
                                          AppImages.geimini,
                                          width: 24,
                                        )
                                      else
                                        const Icon(
                                          Icons.person,
                                          color: AppColors.primaryDark,
                                        ),
                                      const HorizontalSpacing(4),
                                      Flexible(
                                        child: Text(
                                          _getText(state, index),
                                          style: const TextStyle(fontSize: 16),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            separatorBuilder: (context, index) =>
                                const VerticalSpacing(32),
                            itemCount: reversedChat?.length ?? 0,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
                  child: Form(
                    key: _formKey,
                    child: GeminiInputField(
                      hintText: 'Ask anything to Gemini....',
                      validator: ValidationBuilder().required().build(),
                      autovalidateMode: AutovalidateMode.disabled,
                      textEditingController: controller,
                      onSend: (files) {
                        if (_formKey.currentState!.validate()) {
                          AppUtils.unfocusKeyboard(context);
                          if (files?.isEmpty ?? true) {
                            BlocProvider.of<HomeBloc>(context).add(
                              HomeEvent.startChat(
                                  prompt: controller.text, id: 1),
                            );
                          } else {
                            BlocProvider.of<HomeBloc>(context).add(
                                HomeEvent.generateFromImage(
                                    prompt: controller.text, files: files!));
                          }

                          controller.clear();
                          Future.delayed(
                            Durations.short1,
                            () {
                              _scrollController.animateTo(
                                _scrollController.position.minScrollExtent,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.decelerate,
                              );
                            },
                          );
                        }
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _getText(HomeState state, int index) {
    final reversedChat = state.chathistory?.reversed.toList();
    final contentParts = reversedChat?[index].parts ?? [];
    for (final i in contentParts) {
      if (i is TextPart) {
        return i.text;
      } else if (i is DataPart) {
        return i.bytes.toString();
      }
    }
    return 'WTFF';
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:close_ai/constants/app_colors.dart';
import 'package:close_ai/enum/gemini_model_enum.dart';
import 'package:close_ai/enum/the_states.dart';
import 'package:close_ai/features/common/app_scaffold.dart';
import 'package:close_ai/features/common/gemini_input_field.dart';
import 'package:close_ai/features/drawer/presentation/screens/app_drawer.dart';
import 'package:close_ai/features/homescreen/presentation/bloc/home_bloc.dart';
import 'package:close_ai/features/homescreen/presentation/screens/widgets/message_widget.dart';
import 'package:close_ai/utlis/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';

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
        drawer: const AppDrawer(),
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
                          child: ListView.builder(
                            controller: _scrollController,
                            shrinkWrap: true,
                            reverse: true,
                            keyboardDismissBehavior:
                                ScrollViewKeyboardDismissBehavior.onDrag,
                            padding:
                                const EdgeInsets.only(top: 16, bottom: 100),
                            itemBuilder: (context, index) => MessageWidget(
                              isLoading: index == 0 &&
                                  state.theStates == TheStates.loading,
                              contents: reversedChat?[index],
                            ),
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
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 16,
                  ),
                  child: Form(
                    key: _formKey,
                    child: BlocBuilder<HomeBloc, HomeState>(
                      builder: (context, state) {
                        return GeminiInputField(
                          hintText: 'Ask anything to Gemini....',
                          validator: ValidationBuilder().required().build(),
                          autovalidateMode: AutovalidateMode.disabled,
                          textEditingController: controller,
                          currentModel: state.currentModel,
                          onSend: (files) {
                            if (_formKey.currentState!.validate()) {
                              AppUtils.unfocusKeyboard(context);
                              if (state.currentModel == GeminiModelEnum.text) {
                                BlocProvider.of<HomeBloc>(context).add(
                                  HomeEvent.startChat(
                                    prompt: controller.text,
                                    id: 1,
                                  ),
                                );
                              } else {
                                if (files?.isEmpty ?? true) {
                                  BlocProvider.of<HomeBloc>(context).add(
                                    HomeEvent.startChat(
                                      id: 1,
                                      prompt: controller.text,
                                    ),
                                  );
                                } else {
                                  BlocProvider.of<HomeBloc>(context).add(
                                    HomeEvent.generateFromImage(
                                      prompt: controller.text,
                                      files: files!,
                                    ),
                                  );
                                }
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
                        );
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
}

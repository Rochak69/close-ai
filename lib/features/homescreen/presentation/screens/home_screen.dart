import 'package:auto_route/auto_route.dart';
import 'package:close_ai/constants/app_colors.dart';
import 'package:close_ai/constants/app_lottie_animation.dart';
import 'package:close_ai/enum/gemini_model_enum.dart';
import 'package:close_ai/enum/the_states.dart';
import 'package:close_ai/features/common/app_scaffold.dart';
import 'package:close_ai/features/common/gemini_input_field.dart';
import 'package:close_ai/features/drawer/presentation/bloc/drawer_bloc.dart';
import 'package:close_ai/features/drawer/presentation/screens/app_drawer.dart';
import 'package:close_ai/features/homescreen/presentation/bloc/home_bloc.dart';
import 'package:close_ai/features/homescreen/presentation/screens/widgets/message_widget.dart';
import 'package:close_ai/features/homescreen/presentation/screens/widgets/rotating_gemini.dart';
import 'package:close_ai/features/signup/data/model/signup_response.dart';
import 'package:close_ai/utlis/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:lottie/lottie.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({required this.userDetails, super.key});
  final SignUpResponse userDetails;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    BlocProvider.of<HomeBloc>(context)
        .add(HomeEvent.init(userDetails: widget.userDetails));
    _scrollController = ScrollController();
    BlocProvider.of<DrawerBloc>(context)
        .add(const DrawerEvent.getChatHistory());
    BlocProvider.of<HomeBloc>(context)
        .add(const HomeEvent.switchModel(modelEnum: GeminiModelEnum.text));
  }

  @override
  void dispose() {
    _scrollController.dispose();

    super.dispose();
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
          title: const Text('Chat with Gemini'),
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
                        return Container(
                          width: double.infinity,
                          color: Theme.of(context).canvasColor,
                          child: state.theStates == TheStates.initial
                              ? const Align(child: RotatinGemini.large())
                              : (state.chathistory?.isEmpty ?? true)
                                  ? Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Align(
                                          child: Lottie.asset(
                                            width: 120,
                                            AppLottieAnimations.startChat,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 32,
                                          ),
                                          child: Column(
                                            children: [
                                              const Text(
                                                'This Text to Text model remembers the context of your chat.',
                                                textAlign: TextAlign.center,
                                              ),
                                              const Text(
                                                'Start chatting ',
                                                style: TextStyle(fontSize: 16),
                                              ).animate(
                                                onComplete: (controller) {
                                                  controller.repeat();
                                                },
                                              ).shimmer(
                                                color: AppColors.primaryDark,
                                                duration: Durations.extralong4,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  : ListView.builder(
                                      controller: _scrollController,
                                      shrinkWrap: true,
                                      reverse: true,
                                      keyboardDismissBehavior:
                                          ScrollViewKeyboardDismissBehavior
                                              .onDrag,
                                      padding: const EdgeInsets.only(
                                        top: 16,
                                        bottom: 100,
                                      ),
                                      itemBuilder: (context, index) =>
                                          MessageWidget(
                                        isLoading: index == 0 &&
                                            state.theStates ==
                                                TheStates.loading,
                                        content: reversedChat?[index],
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
                          hintText: 'Ask Gemini to anything....',
                          validator: ValidationBuilder().required().build(),
                          autovalidateMode: AutovalidateMode.disabled,
                          textEditingController: controller,
                          textInputAction: TextInputAction.newline,
                          textInputType: TextInputType.multiline,
                          currentModel: state.currentModel,
                          isLoading: state.theStates == TheStates.loading,
                          onSend: (files) {
                            if (_formKey.currentState!.validate()) {
                              AppUtils.unfocusKeyboard(context);
                              if (state.currentModel == GeminiModelEnum.text) {
                                BlocProvider.of<HomeBloc>(context).add(
                                  HomeEvent.startChat(
                                    prompt: controller.text,
                                    id: state.selectedCoversationId ?? 'null',
                                  ),
                                );
                              } else {
                                if (files?.isEmpty ?? true) {
                                  BlocProvider.of<HomeBloc>(context).add(
                                    HomeEvent.startChat(
                                      id: state.selectedCoversationId ??
                                          'image null',
                                      prompt: controller.text,
                                    ),
                                  );
                                } else {
                                  BlocProvider.of<HomeBloc>(context).add(
                                    HomeEvent.generateFromImage(
                                      prompt: controller.text,
                                      id: state.selectedCoversationId ??
                                          'image null',
                                      files: files!,
                                    ),
                                  );
                                }
                              }

                              controller.clear();
                              Future.delayed(
                                Durations.short1,
                                () {
                                  if (!_scrollController.hasClients) {
                                    return;
                                  }
                                  _scrollController.animateTo(
                                    _scrollController.position.minScrollExtent,
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.decelerate,
                                  );
                                },
                              );
                            }
                          },
                          onStop: () {
                            BlocProvider.of<HomeBloc>(context).add(
                              HomeEvent.startChat(
                                id: state.selectedCoversationId ?? 'image null',
                                prompt: controller.text,
                                stopResponse: true,
                              ),
                            );
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

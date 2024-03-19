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
          child: Column(
            children: [
              Expanded(
                child: BlocConsumer<HomeBloc, HomeState>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    return ColoredBox(
                      color: Theme.of(context).canvasColor,
                      child: ListView(
                        controller: _scrollController,
                        reverse: true,
                        children: [
                          if (state.progressPrompt != null)
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 6,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    textDirection: TextDirection.rtl,
                                    children: [
                                      const Icon(
                                        Icons.person,
                                        size: 18,
                                        color: AppColors.colorRed,
                                      ),
                                      const HorizontalSpacing(4),
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            state.progressPrompt?.prompt ?? '',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const VerticalSpacing(16),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset(
                                        AppImages.geimini,
                                        width: 20,
                                      ),
                                      const HorizontalSpacing(4),
                                      Expanded(
                                        child: Text(
                                          state.progressPrompt?.result ?? '',
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            keyboardDismissBehavior:
                                ScrollViewKeyboardDismissBehavior.onDrag,
                            padding: const EdgeInsets.symmetric(
                              vertical: 16,
                            ),
                            itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 6,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    textDirection: TextDirection.rtl,
                                    children: [
                                      const Icon(
                                        Icons.person,
                                        size: 18,
                                        color: AppColors.colorRed,
                                      ),
                                      const HorizontalSpacing(4),
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            state.homeResponse?[index].prompt ??
                                                '',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const VerticalSpacing(16),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset(
                                        AppImages.geimini,
                                        width: 20,
                                      ),
                                      const HorizontalSpacing(4),
                                      Expanded(
                                        child: Text(
                                          state.homeResponse?[index].result ??
                                              '',
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            separatorBuilder: (context, index) => Container(
                              margin: const EdgeInsets.symmetric(vertical: 24),
                              width: double.infinity,
                              height: 1,
                              color: AppColors.primaryDark,
                            ),
                            itemCount: state.homeResponse?.length ?? 0,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
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

                        BlocProvider.of<HomeBloc>(context).add(
                          HomeEvent.fetch(
                              prompt: controller.text, files: files),
                        );
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
            ],
          ),
        ),
      ),
    );
  }
}

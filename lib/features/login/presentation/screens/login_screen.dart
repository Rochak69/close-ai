import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:close_ai/constants/app_colors.dart';
import 'package:close_ai/constants/app_images.dart';
import 'package:close_ai/core/build_variants/enum.dart';
import 'package:close_ai/core/config/environment_helper.dart';
import 'package:close_ai/core/route/app_router.dart';

import 'package:close_ai/enum/the_states.dart';
import 'package:close_ai/features/common/app_outlined_button.dart';
import 'package:close_ai/features/common/app_scaffold.dart';
import 'package:close_ai/features/common/app_spacing.dart';
import 'package:close_ai/features/common/app_text_form_field.dart';
import 'package:close_ai/features/login/presentation/bloc/login_bloc.dart';
import 'package:close_ai/features/login/presentation/screens/widgets/social_icon_button.dart';
import 'package:close_ai/utlis/app_flushbar.dart';
import 'package:close_ai/utlis/helper.dart';
import 'package:close_ai/utlis/uihelper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:upgrader/upgrader.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool hidePassword = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _initCredentials();
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return UpgradeAlert(
      dialogStyle: Platform.isIOS
          ? UpgradeDialogStyle.cupertino
          : UpgradeDialogStyle.material,
      showIgnore: false,
      child: AppScaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: BlocListener<LoginBloc, LoginState>(
              listener: (context, state) {
                if (state.theStates == TheStates.success) {
                  Navigator.pop(context);
                  AppUtils.unfocusKeyboard(context);
                  AutoRouter.of(context).replace(const HomeRoute());
                } else if (state.theStates == TheStates.error) {
                  Navigator.pop(context);
                  AppFlushbar.error(context);
                }
              },
              listenWhen: (previous, current) =>
                  previous.theStates != current.theStates,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Welcome back!',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                  ),
                  const VerticalSpacing(16),
                  const Text(
                    'Log in to chat with Gemini AI',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const VerticalSpacing(16),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        AppTextFormField(
                          hintText: 'Email',
                          textEditingController: emailController,
                          validator: ValidationBuilder().email().build(),
                        ),
                        const VerticalSpacing(16),
                        AppTextFormField(
                          hintText: 'Password',
                          textEditingController: passwordController,
                          obscureText: hidePassword,
                          textInputAction: TextInputAction.done,
                          suffixIcon: IconButton(
                            icon: Icon(
                              hidePassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: AppColors.primaryDark,
                            ),
                            onPressed: () {
                              setState(() {
                                hidePassword = !hidePassword;
                              });
                            },
                          ),
                          validator: ValidationBuilder().minLength(6).build(),
                        ),
                      ],
                    ),
                  ),
                  const VerticalSpacing(16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        final isFormValid = _formKey.currentState!.validate();
                        if (isFormValid) {
                          UiHelper.showloaderdialog(context);
                          BlocProvider.of<LoginBloc>(context)
                              .add(const LoginEvent.login());
                        }
                      },
                      child: const Text('Login'),
                    ),
                  ),
                  const VerticalSpacing(16),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Divider(
                          color: AppColors.primaryDark,
                          thickness: 1,
                          endIndent: 5,
                        ),
                      ),
                      Text(
                        'Or Login With',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.primaryDark,
                        ),
                      ),
                      Flexible(
                        child: Divider(
                          color: AppColors.primaryDark,
                          thickness: 1,
                          indent: 5,
                        ),
                      ),
                    ],
                  ),
                  const VerticalSpacing(16),
                  Center(
                    child: SocialIconButton(
                      iconPng: AppImages.googlePng,
                      onTap: () {},
                    ),
                  ),
                  const VerticalSpacing(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          color: AppColors.textFieldGrey,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                      TextButton(onPressed: () {}, child: Text('Sign up here'))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _initCredentials() {
    if (kDebugMode) {
      if (EnvironmentHelper().getValue(EnvironmentKey.env) ==
          AppEnvironment.development.name) {
        emailController.text = 'test@test.com';
        passwordController.text = 'test163';
      } else {
        emailController.text = 'test@test.com';
        passwordController.text = 'test163';
      }
    }
  }
}

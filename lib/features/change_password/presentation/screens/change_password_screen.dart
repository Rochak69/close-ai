import 'package:auto_route/auto_route.dart';
import 'package:close_ai/constants/app_constant.dart';
import 'package:close_ai/features/change_password/presentation/bloc/change_password_bloc.dart';
import 'package:close_ai/features/common/app_scaffold.dart';
import 'package:close_ai/utlis/app_flushbar.dart';
import 'package:close_ai/utlis/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';

@RoutePage()
class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  late TextEditingController controller;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChangePasswordBloc, ChangePasswordState>(
      listener: (context, state) {
        state.whenOrNull(
          error: () {
            Navigator.pop(context);
            AppFlushbar.error(
              context,
              message: AppConstants.errorMessage,
            );
          },
          success: () {
            Navigator.pop(context);
            AppFlushbar.success(
              context,
              message: 'Please check your mail to reset your password.',
            );
            Navigator.pop(context);
          },
          loading: () => UiHelper.showloaderdialog(context),
        );
      },
      child: AppScaffold(
        appBar: AppBar(
          title: const Text('Change Password'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: TextFormField(
                  controller: controller,
                  keyboardType: TextInputType.emailAddress,
                  validator: ValidationBuilder().email().build(),
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      BlocProvider.of<ChangePasswordBloc>(context).add(
                        ChangePasswordEvent.sendOtp(email: controller.text),
                      );
                    }
                  },
                  child: const Text('Send OTP'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

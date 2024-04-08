import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/{{name}}_bloc.dart';
import 'package:close_ai/features/common/app_error_widget.dart';
import 'package:close_ai/features/common/app_loading_widget.dart';
import 'package:close_ai/features/common/app_scaffold.dart';
class {{name.pascalCase()}}Screen extends {{#isStateless}} StatelessWidget {{/isStateless}} {{^isStateless}} StatefulWidget {{/isStateless}}{
  const {{name.pascalCase()}}Screen({super.key});
  {{^isStateless}}
  @override
  State<{{name.pascalCase()}}Screen> createState()=>_{{name.pascalCase()}}ScreenState();
  }


class _{{name.pascalCase()}}ScreenState extends State<{{name.pascalCase()}}Screen>{
    {{/isStateless}}
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: BlocConsumer<{{name.pascalCase()}}Bloc, {{name.pascalCase()}}State>(
        listener: (context, state) {},
        builder: (context, state) {
          state.when(
            initial: () => Container(),
            loading: () => const AppLoadingWidget(),
            error: (errorMessage) => AppErrorWidget(
              title: errorMessage,
            ),
            success: () {
              return Container();
            },
          );
          return Container();
        },
      ),
    );
  }
}


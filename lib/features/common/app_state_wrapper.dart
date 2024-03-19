import 'package:close_ai/enum/the_states.dart';
import 'package:flutter/material.dart';

class AppStateWrapper extends StatelessWidget {
  const AppStateWrapper({
    required this.successChild,
    required this.theStates,
    super.key,
    this.initialChild = const CircularProgressIndicator(),
    this.errorChild = const Text('ERROR'),
  });
  final Widget successChild;
  final Widget initialChild;
  final Widget errorChild;
  final TheStates theStates;

  @override
  Widget build(BuildContext context) {
    return theStates == TheStates.success
        ? successChild
        : theStates == TheStates.error
            ? errorChild
            : initialChild;
  }
}

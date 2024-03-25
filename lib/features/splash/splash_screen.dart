import 'package:auto_route/auto_route.dart';
import 'package:close_ai/constants/app_colors.dart';
import 'package:close_ai/core/route/app_router.dart';
import 'package:close_ai/extensions/string_extension.dart';
import 'package:close_ai/features/common/app_scaffold.dart';
import 'package:close_ai/features/signup/data/model/signup_response.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: ColoredBox(
        color: Colors.lightGreen.shade50,
        child: const Center(
          child: Icon(
            Icons.flutter_dash_outlined,
            size: 180,
            color: AppColors.blue,
          ),
        )
            .animate(
              onComplete: (controller) {
                if (FirebaseAuth.instance.currentUser == null) {
                  AutoRouter.of(context)
                      .replaceNamed(LoginRoute.name.routePath());
                } else {
                  AutoRouter.of(context).replace(
                    HomeRoute(
                      userDetails: SignUpResponse(
                        email: FirebaseAuth.instance.currentUser?.email,
                        name: FirebaseAuth.instance.currentUser?.displayName,
                        uuid: FirebaseAuth.instance.currentUser?.uid,
                      ),
                    ),
                  );
                }
              },
            )
            .slideY(
              begin: 1,
              duration: const Duration(milliseconds: 800),
              curve: Curves.decelerate,
              delay: const Duration(milliseconds: 300),
            )
            .then()
            .shakeY(curve: Curves.easeInOutCubicEmphasized),
      ),
    );
  }
}

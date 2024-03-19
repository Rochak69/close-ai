import 'package:auto_route/auto_route.dart';
import 'package:close_ai/extensions/string_extension.dart';
import 'package:close_ai/features/homescreen/presentation/screens/home_screen.dart';

import 'package:close_ai/features/login/presentation/screens/login_screen.dart';
import 'package:close_ai/features/splash/splash_screen.dart';
import 'package:close_ai/features/unknown/unknown_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          path: SplashRoute.name.routePath(),
          page: SplashRoute.page,
          transitionsBuilder: TransitionsBuilders.slideBottom,
          initial: true,
        ),
        CustomRoute(
          path: LoginRoute.name.routePath(),
          page: LoginRoute.page,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
        CustomRoute(
          path: HomeRoute.name.routePath(),
          page: HomeRoute.page,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
        CustomRoute(
          transitionsBuilder: TransitionsBuilders.slideBottom,
          path: UnknownRoute.name.routePath(),
          page: UnknownRoute.page,
        ),
      ];
  static final instance = AppRouter();
}

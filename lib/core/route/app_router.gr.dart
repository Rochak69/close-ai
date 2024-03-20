// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    SelectTextRoute.name: (routeData) {
      final args = routeData.argsAs<SelectTextRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SelectTextScreen(
          key: args.key,
          text: args.text,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
    UnknownRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UnknownScreen(),
      );
    },
  };
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SelectTextScreen]
class SelectTextRoute extends PageRouteInfo<SelectTextRouteArgs> {
  SelectTextRoute({
    Key? key,
    required String text,
    List<PageRouteInfo>? children,
  }) : super(
          SelectTextRoute.name,
          args: SelectTextRouteArgs(
            key: key,
            text: text,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectTextRoute';

  static const PageInfo<SelectTextRouteArgs> page =
      PageInfo<SelectTextRouteArgs>(name);
}

class SelectTextRouteArgs {
  const SelectTextRouteArgs({
    this.key,
    required this.text,
  });

  final Key? key;

  final String text;

  @override
  String toString() {
    return 'SelectTextRouteArgs{key: $key, text: $text}';
  }
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UnknownScreen]
class UnknownRoute extends PageRouteInfo<void> {
  const UnknownRoute({List<PageRouteInfo>? children})
      : super(
          UnknownRoute.name,
          initialChildren: children,
        );

  static const String name = 'UnknownRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

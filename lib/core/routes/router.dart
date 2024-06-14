import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gplx_600_cau/core/observer/navigator_obs.dart';
import 'package:gplx_600_cau/core/routes/route_path.dart';
import 'package:gplx_600_cau/features/presentation/ui/home/home_screen.dart';
import 'package:gplx_600_cau/features/presentation/ui/zlicense/zlicense_screen.dart';

part 'router.g.dart';

final navigatorKey = GlobalKey<NavigatorState>();

class Routers {
  Routers._() {
    $router = GoRouter(
      routes: $appRoutes,
      navigatorKey: navigatorKey,
      redirect: (_, state) {
        return null;
      },
      observers: [AppNavObserver()],
    );
  }

  static final internal = Routers._();
  late final GoRouter $router;
}

@TypedGoRoute<RootApp>(path: $RouterPath.root)
class RootApp extends GoRouteData {
  @override
  FutureOr<String?> redirect(BuildContext context, GoRouterState state) async {
    return LicenseRoute().location;
  }
}

@TypedGoRoute<HomeRoute>(path: $RouterPath.home)
class HomeRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }
}

@TypedGoRoute<LicenseRoute>(path: $RouterPath.license)
class LicenseRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ZLicenseScreen();
  }
}

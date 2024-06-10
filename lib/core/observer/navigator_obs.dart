import 'dart:developer';

import 'package:flutter/material.dart';

class AppNavObserver extends NavigatorObserver {
  @override
  void didPop(Route route, Route? previousRoute) {
    log('========= didPop ===== ${route.settings.name ?? '--'}');
    super.didPop(route, previousRoute);
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    log('========= didPush ===== ${route.settings.name ?? '--'}');
    super.didPush(route, previousRoute);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    log('========= didRemove ===== ${route.settings.name ?? '--'}');
    super.didRemove(route, previousRoute);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    log('========= didReplace ===== ${newRoute?.settings.name ?? '--'}');
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }
}

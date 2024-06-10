class $RouterPath {
  $RouterPath();
  static const String root = '/';
  static const home = '/home';
}

enum AppRouter {
  root,
  home,
}

extension AppRouterX on AppRouter {
  String get path {
    return switch (this) {
      AppRouter.root => $RouterPath.root,
      AppRouter.home => $RouterPath.home,
    };
  }
}

class $RouterPath {
  $RouterPath();
  static const String root = '/';
  static const home = '/home';
  static const license = '/license';
}

enum AppRouter {
  root,
  home,
  license,
}

extension AppRouterX on AppRouter {
  String get path {
    return switch (this) {
      AppRouter.root => $RouterPath.root,
      AppRouter.home => $RouterPath.home,
      AppRouter.license => $RouterPath.license,
    };
  }
}

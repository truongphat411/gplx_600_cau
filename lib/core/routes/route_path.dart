class $RouterPath {
  $RouterPath._();
  static const String root = '/';
  static const home = '/home';
  static const license = '/license';
  static const mockTest = '/mock-test';
  static const reviewQuestions = '/review-questions/:isQuestionDie';
  static const frequentMistakes = '/frequent-mistakes';
  static const memoryTips = '/memory-tips';
  static const savedQuestion = '/saved-question';
  static const trafficSigns = '/traffic-signs';
}

enum AppRouter {
  root,
  home,
  license,
  mockTest,
  reviewQuestions,
  frequentMistakes,
  memoryTips,
  savedQuestion,
  trafficSigns,
}

extension AppRouterX on AppRouter {
  String get path {
    return switch (this) {
      AppRouter.root => $RouterPath.root,
      AppRouter.home => $RouterPath.home,
      AppRouter.license => $RouterPath.license,
      AppRouter.mockTest => $RouterPath.mockTest,
      AppRouter.reviewQuestions => $RouterPath.reviewQuestions,
      AppRouter.frequentMistakes => $RouterPath.frequentMistakes,
      AppRouter.memoryTips => $RouterPath.memoryTips,
      AppRouter.savedQuestion => $RouterPath.savedQuestion,
      AppRouter.trafficSigns => $RouterPath.trafficSigns,
    };
  }
}

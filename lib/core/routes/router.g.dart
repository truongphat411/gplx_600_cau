// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $rootApp,
      $homeRoute,
      $licenseRoute,
      $mockTestRoute,
      $reviewQuestionsRoute,
      $frequentMistakesRoute,
      $memoryTipsRoute,
      $savedQuestionRoute,
      $trafficSignsRoute,
    ];

RouteBase get $rootApp => GoRouteData.$route(
      path: '/',
      factory: $RootAppExtension._fromState,
    );

extension $RootAppExtension on RootApp {
  static RootApp _fromState(GoRouterState state) => RootApp();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/home',
      factory: $HomeRouteExtension._fromState,
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => HomeRoute();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $licenseRoute => GoRouteData.$route(
      path: '/license',
      factory: $LicenseRouteExtension._fromState,
    );

extension $LicenseRouteExtension on LicenseRoute {
  static LicenseRoute _fromState(GoRouterState state) => LicenseRoute();

  String get location => GoRouteData.$location(
        '/license',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $mockTestRoute => GoRouteData.$route(
      path: '/mock-test',
      factory: $MockTestRouteExtension._fromState,
    );

extension $MockTestRouteExtension on MockTestRoute {
  static MockTestRoute _fromState(GoRouterState state) => MockTestRoute();

  String get location => GoRouteData.$location(
        '/mock-test',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $reviewQuestionsRoute => GoRouteData.$route(
      path: '/review-questions/:questionType',
      factory: $ReviewQuestionsRouteExtension._fromState,
    );

extension $ReviewQuestionsRouteExtension on ReviewQuestionsRoute {
  static ReviewQuestionsRoute _fromState(GoRouterState state) =>
      ReviewQuestionsRoute(
        questionType: _$QuestionTypeEnumMap
                ._$fromName(state.pathParameters['questionType']!) ??
            QuestionType.all,
      );

  String get location => GoRouteData.$location(
        '/review-questions/${Uri.encodeComponent(_$QuestionTypeEnumMap[questionType]!)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

const _$QuestionTypeEnumMap = {
  QuestionType.all: 'all',
  QuestionType.critical: 'critical',
  QuestionType.frequentMistakes: 'frequent-mistakes',
};

extension<T extends Enum> on Map<T, String> {
  T _$fromName(String value) =>
      entries.singleWhere((element) => element.value == value).key;
}

RouteBase get $frequentMistakesRoute => GoRouteData.$route(
      path: '/frequent-mistakes',
      factory: $FrequentMistakesRouteExtension._fromState,
    );

extension $FrequentMistakesRouteExtension on FrequentMistakesRoute {
  static FrequentMistakesRoute _fromState(GoRouterState state) =>
      FrequentMistakesRoute();

  String get location => GoRouteData.$location(
        '/frequent-mistakes',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $memoryTipsRoute => GoRouteData.$route(
      path: '/memory-tips',
      factory: $MemoryTipsRouteExtension._fromState,
    );

extension $MemoryTipsRouteExtension on MemoryTipsRoute {
  static MemoryTipsRoute _fromState(GoRouterState state) => MemoryTipsRoute();

  String get location => GoRouteData.$location(
        '/memory-tips',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $savedQuestionRoute => GoRouteData.$route(
      path: '/saved-question',
      factory: $SavedQuestionRouteExtension._fromState,
    );

extension $SavedQuestionRouteExtension on SavedQuestionRoute {
  static SavedQuestionRoute _fromState(GoRouterState state) =>
      SavedQuestionRoute();

  String get location => GoRouteData.$location(
        '/saved-question',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $trafficSignsRoute => GoRouteData.$route(
      path: '/traffic-signs',
      factory: $TrafficSignsRouteExtension._fromState,
    );

extension $TrafficSignsRouteExtension on TrafficSignsRoute {
  static TrafficSignsRoute _fromState(GoRouterState state) =>
      TrafficSignsRoute();

  String get location => GoRouteData.$location(
        '/traffic-signs',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

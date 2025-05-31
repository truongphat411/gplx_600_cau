// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $rootApp,
      $homeRoute,
      $licenseRoute,
      $questionTypesRoute,
      $mockTestRoute,
      $testQuestRoute,
      $reviewQuestionsRoute,
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
  static LicenseRoute _fromState(GoRouterState state) => LicenseRoute(
        $extra: state.extra as HomeBloc,
      );

  String get location => GoRouteData.$location(
        '/license',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

RouteBase get $questionTypesRoute => GoRouteData.$route(
      path: '/question-types',
      factory: $QuestionTypesRouteExtension._fromState,
    );

extension $QuestionTypesRouteExtension on QuestionTypesRoute {
  static QuestionTypesRoute _fromState(GoRouterState state) =>
      QuestionTypesRoute(
        $extra: state.extra as HomeBloc,
      );

  String get location => GoRouteData.$location(
        '/question-types',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

RouteBase get $mockTestRoute => GoRouteData.$route(
      path: '/mock-test',
      factory: $MockTestRouteExtension._fromState,
    );

extension $MockTestRouteExtension on MockTestRoute {
  static MockTestRoute _fromState(GoRouterState state) => MockTestRoute(
        $extra: state.extra as HomeBloc,
      );

  String get location => GoRouteData.$location(
        '/mock-test',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

RouteBase get $testQuestRoute => GoRouteData.$route(
      path: '/test-quest',
      factory: $TestQuestRouteExtension._fromState,
    );

extension $TestQuestRouteExtension on TestQuestRoute {
  static TestQuestRoute _fromState(GoRouterState state) => TestQuestRoute(
        testID: int.parse(state.uri.queryParameters['test-i-d']!),
        $extra: state.extra as HomeBloc,
      );

  String get location => GoRouteData.$location(
        '/test-quest',
        queryParams: {
          'test-i-d': testID.toString(),
        },
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

RouteBase get $reviewQuestionsRoute => GoRouteData.$route(
      path: '/review-questions/:questionType',
      factory: $ReviewQuestionsRouteExtension._fromState,
    );

extension $ReviewQuestionsRouteExtension on ReviewQuestionsRoute {
  static ReviewQuestionsRoute _fromState(GoRouterState state) =>
      ReviewQuestionsRoute(
        questionType: _$QuestionTypeEnumEnumMap
                ._$fromName(state.pathParameters['questionType']!) ??
            QuestionTypeEnum.all,
        questionTypePK: _$convertMapValue(
            'question-type-p-k', state.uri.queryParameters, int.parse),
        questionTypeName: state.uri.queryParameters['question-type-name'],
        testID:
            _$convertMapValue('test-i-d', state.uri.queryParameters, int.parse),
        $extra: state.extra as HomeBloc,
      );

  String get location => GoRouteData.$location(
        '/review-questions/${Uri.encodeComponent(_$QuestionTypeEnumEnumMap[questionType]!)}',
        queryParams: {
          if (questionTypePK != null)
            'question-type-p-k': questionTypePK!.toString(),
          if (questionTypeName != null) 'question-type-name': questionTypeName,
          if (testID != null) 'test-i-d': testID!.toString(),
        },
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

const _$QuestionTypeEnumEnumMap = {
  QuestionTypeEnum.all: 'all',
  QuestionTypeEnum.critical: 'critical',
  QuestionTypeEnum.saved: 'saved',
  QuestionTypeEnum.questionByType: 'question-by-type',
  QuestionTypeEnum.frequentMistakes: 'frequent-mistakes',
  QuestionTypeEnum.test: 'test',
};

T? _$convertMapValue<T>(
  String key,
  Map<String, String> map,
  T Function(String) converter,
) {
  final value = map[key];
  return value == null ? null : converter(value);
}

extension<T extends Enum> on Map<T, String> {
  T _$fromName(String value) =>
      entries.singleWhere((element) => element.value == value).key;
}

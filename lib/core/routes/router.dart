import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gplx_600_cau/core/enum/question_type_enum.dart';
import 'package:gplx_600_cau/core/observer/navigator_obs.dart';
import 'package:gplx_600_cau/core/routes/route_path.dart';
import 'package:gplx_600_cau/di.dart';
import 'package:gplx_600_cau/features/presentation/ui/home/blocs/home_bloc.dart';
import 'package:gplx_600_cau/features/presentation/ui/question_types/question_types.dart';
import 'package:gplx_600_cau/features/presentation/ui/question/bloc/questions_action_bloc/questions_action_bloc.dart';
import 'package:gplx_600_cau/features/presentation/ui/home/home_screen.dart';
import 'package:gplx_600_cau/features/presentation/ui/mock_test/mock_test_screen.dart';
import 'package:gplx_600_cau/features/presentation/ui/review_questions/review_questions_screen.dart';
import 'package:gplx_600_cau/features/presentation/ui/license/license_screen.dart';
import 'package:gplx_600_cau/features/presentation/ui/test_quest_screen/test_quest_screen.dart';

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
    return HomeRoute().location;
  }
}

@TypedGoRoute<HomeRoute>(path: $RouterPath.home)
class HomeRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) => getIt<HomeBloc>()
        ..add(
          const HomeEvent.insertData(),
        ),
      child: const HomeScreen(),
    );
  }
}

@TypedGoRoute<LicenseRoute>(path: $RouterPath.license)
class LicenseRoute extends GoRouteData {
  const LicenseRoute({
    required this.$extra,
  });

  final HomeBloc $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return LicenseScreen(
      homeBloc: $extra,
    );
  }
}

@TypedGoRoute<QuestionTypesRoute>(path: $RouterPath.questionTypes)
class QuestionTypesRoute extends GoRouteData {
  QuestionTypesRoute({
    required this.$extra,
  });

  final HomeBloc $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return QuestionTypes(
      homeBloc: $extra,
    );
  }
}

@TypedGoRoute<MockTestRoute>(path: $RouterPath.mockTest)
class MockTestRoute extends GoRouteData {
  MockTestRoute({
    required this.$extra,
  });

  final HomeBloc $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return MockTestScreen(
      homeBloc: $extra,
    );
  }
}

@TypedGoRoute<TestQuestRoute>(path: $RouterPath.testQuest)
class TestQuestRoute extends GoRouteData {
  TestQuestRoute({
    required this.$extra,
    required this.testID,
  });

  final HomeBloc $extra;
  final int testID;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) => getIt<QuestionsActionBloc>(),
      child: TestQuestScreen(
        homeBloc: $extra,
        testID: testID,
      ),
    );
  }
}

@TypedGoRoute<ReviewQuestionsRoute>(path: $RouterPath.reviewQuestions)
class ReviewQuestionsRoute extends GoRouteData {
  const ReviewQuestionsRoute({
    this.questionType = QuestionTypeEnum.all,
    this.questionTypePK,
    this.questionTypeName,
    this.testID,
    required this.$extra,
  });

  final QuestionTypeEnum questionType;
  final int? questionTypePK;
  final String? questionTypeName;
  final int? testID;
  final HomeBloc $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) => getIt<QuestionsActionBloc>(),
      child: ReviewQuestionsScreen(
        questionType: questionType,
        questionTypePK: questionTypePK,
        questionTypeName: questionTypeName,
        testID: testID,
        homeBloc: $extra,
      ),
    );
  }
}

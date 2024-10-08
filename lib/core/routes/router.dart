import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gplx_600_cau/core/enum/question_type.dart';
import 'package:gplx_600_cau/core/observer/navigator_obs.dart';
import 'package:gplx_600_cau/core/routes/route_path.dart';
import 'package:gplx_600_cau/di.dart';
import 'package:gplx_600_cau/features/data/models/znumberquestionpertype/znumberquestionpertype.dart';
import 'package:gplx_600_cau/features/presentation/ui/home/blocs/home_bloc.dart';
import 'package:gplx_600_cau/features/presentation/ui/license/blocs/license/license_bloc.dart';
import 'package:gplx_600_cau/features/presentation/ui/review_questions/blocs/review_questions_action_bloc/review_questions_action_bloc.dart';
import 'package:gplx_600_cau/features/presentation/ui/review_questions/blocs/review_questions_bloc/review_questions_bloc.dart';
import 'package:gplx_600_cau/features/presentation/ui/frequent-mistakes/frequent_mistakes_screen.dart';
import 'package:gplx_600_cau/features/presentation/ui/home/home_screen.dart';
import 'package:gplx_600_cau/features/presentation/ui/memory_tips/memory_tips_screen.dart';
import 'package:gplx_600_cau/features/presentation/ui/mock_test/mock_test_screen.dart';
import 'package:gplx_600_cau/features/presentation/ui/review_questions/review_questions_screen.dart';
import 'package:gplx_600_cau/features/presentation/ui/saved_questions/saved_questions_screen.dart';
import 'package:gplx_600_cau/features/presentation/ui/traffic_signs/traffic_signs_screen.dart';
import 'package:gplx_600_cau/features/presentation/ui/license/license_screen.dart';

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
      create: (context) => getIt<HomeBloc>(),
      child: const HomeScreen(),
    );
  }
}

@TypedGoRoute<LicenseRoute>(path: $RouterPath.license)
class LicenseRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) => getIt<LicenseBloc>(),
      child: const LicenseScreen(),
    );
  }
}

@TypedGoRoute<MockTestRoute>(path: $RouterPath.mockTest)
class MockTestRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const MockTestScreen();
  }
}

@TypedGoRoute<ReviewQuestionsRoute>(path: $RouterPath.reviewQuestions)
class ReviewQuestionsRoute extends GoRouteData {
  const ReviewQuestionsRoute(
      {this.questionType = QuestionType.all,
      this.questionTypePK,
      this.questionTypeName});

  final QuestionType questionType;
  final int? questionTypePK;
  final String? questionTypeName;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ReviewQuestionsBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<ReviewQuestionsActionBloc>(),
        ),
      ],
      child: ReviewQuestionsScreen(
        questionType: questionType,
        questionTypePK: questionTypePK,
        questionTypeName: questionTypeName,
      ),
    );
  }
}

@TypedGoRoute<FrequentMistakesRoute>(path: $RouterPath.frequentMistakes)
class FrequentMistakesRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const FrequentMistakesScreen();
  }
}

@TypedGoRoute<MemoryTipsRoute>(path: $RouterPath.memoryTips)
class MemoryTipsRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const MemoryTipsScreen();
  }
}

@TypedGoRoute<SavedQuestionRoute>(path: $RouterPath.savedQuestion)
class SavedQuestionRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SavedQuestionsScreen();
  }
}

@TypedGoRoute<TrafficSignsRoute>(path: $RouterPath.trafficSigns)
class TrafficSignsRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const TrafficSignsScreen();
  }
}

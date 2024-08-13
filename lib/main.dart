import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:gplx_600_cau/di.dart';
import 'package:gplx_600_cau/features/app/app.dart';
import 'package:gplx_600_cau/features/presentation/blocs/license/license_bloc.dart';
import 'package:gplx_600_cau/features/presentation/blocs/review_questions/review_questions_bloc.dart';

Future<void> main() async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    configureDependencies();
    runApp(MultiBlocProvider(
      providers: [
        BlocProvider<LicenseBloc>(
          create: (context) => getIt.get<LicenseBloc>(),
        ),
        BlocProvider<ReviewQuestionsBloc>(
          create: (context) => getIt.get<ReviewQuestionsBloc>(),
        ),
      ],
      child: const App(),
    ));
    configLoading();
  }, (error, stack) {});
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
}

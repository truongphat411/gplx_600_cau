import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:gplx_600_cau/di.dart';
import 'package:gplx_600_cau/features/app/app.dart';
import 'package:gplx_600_cau/features/data/data_sources/local/shared_preferences_storage.dart';

import 'features/data/data_sources/local/database_helper.dart';

Future<void> main() async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    unawaited(MobileAds.instance.initialize());
    configureDependencies();
    final dbHelper = getIt<DatabaseHelper>();
    await dbHelper.database;
    await SharedPreferencesStorage.init();
    runApp(
      const App(),
    );
    configLoading();
  }, (error, stack) {
    debugPrint('error: $error - stack: $stack');
  });
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

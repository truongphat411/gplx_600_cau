import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:gplx_600_cau/core/routes/router.dart';
import 'package:gplx_600_cau/core/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  static const String _title = 'Flutter';

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: EasyLoading.init(
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context)
                .copyWith(textScaler: TextScaler.noScaling),
            child: child!,
          );
        },
      ),
      routeInformationProvider:
          Routers.internal.$router.routeInformationProvider,
      routeInformationParser: Routers.internal.$router.routeInformationParser,
      routerDelegate: Routers.internal.$router.routerDelegate,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      //supportedLocales: L10n.supportedLocales,
      title: _title,
      theme: lightTheme,
      // darkTheme: AppThemes.internal().dartTheme,
    );
  }
}

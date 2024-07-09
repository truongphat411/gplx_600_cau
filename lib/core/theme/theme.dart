import 'package:flutter/material.dart';
import 'package:gplx_600_cau/core/gen/fonts.gen.dart';
import 'package:gplx_600_cau/core/theme/app_colors.dart';

ThemeData get lightTheme => ThemeData.light().copyWith(
  extensions: <ThemeExtension<dynamic>>{
        const AppColors.light(),
      },
      textTheme: ThemeData.light().textTheme.apply(
            fontFamily: FontFamily.roboto,
          ),
    );
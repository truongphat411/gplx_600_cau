import 'package:flutter/material.dart';
import 'package:gplx_600_cau/core/gen/fonts.gen.dart';

ThemeData get lightTheme => ThemeData.light(useMaterial3: false).copyWith(
      textTheme: ThemeData.light().textTheme.apply(
            fontFamily: FontFamily.roboto,
          ),
    );

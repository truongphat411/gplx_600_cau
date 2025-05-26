/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsDatabaseGen {
  const $AssetsDatabaseGen();

  /// File path: assets/database/gplx.db
  String get gplx => 'assets/database/gplx.db';

  /// List of all assets
  List<String> get values => [gplx];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/ic_exam_by_set.svg
  String get icExamBySet => 'assets/images/ic_exam_by_set.svg';

  /// File path: assets/images/ic_frequent_mistakes.svg
  String get icFrequentMistakes => 'assets/images/ic_frequent_mistakes.svg';

  /// File path: assets/images/ic_memory_tips.svg
  String get icMemoryTips => 'assets/images/ic_memory_tips.svg';

  /// File path: assets/images/ic_quiz_save.svg
  String get icQuizSave => 'assets/images/ic_quiz_save.svg';

  /// File path: assets/images/ic_random_quiz.svg
  String get icRandomQuiz => 'assets/images/ic_random_quiz.svg';

  /// File path: assets/images/ic_save_check.svg
  String get icSaveCheck => 'assets/images/ic_save_check.svg';

  /// File path: assets/images/ic_save_uncheck.svg
  String get icSaveUncheck => 'assets/images/ic_save_uncheck.svg';

  /// File path: assets/images/ic_traffic-signs.svg
  String get icTrafficSigns => 'assets/images/ic_traffic-signs.svg';

  /// File path: assets/images/img_warning.png
  AssetGenImage get imgWarning =>
      const AssetGenImage('assets/images/img_warning.png');

  /// List of all assets
  List<dynamic> get values => [
        icExamBySet,
        icFrequentMistakes,
        icMemoryTips,
        icQuizSave,
        icRandomQuiz,
        icSaveCheck,
        icSaveUncheck,
        icTrafficSigns,
        imgWarning
      ];
}

class $AssetsMockDataGen {
  const $AssetsMockDataGen();

  /// File path: assets/mock_data/table_notice_board.json
  String get tableNoticeBoard => 'assets/mock_data/table_notice_board.json';

  /// File path: assets/mock_data/table_notice_board_type.json
  String get tableNoticeBoardType =>
      'assets/mock_data/table_notice_board_type.json';

  /// File path: assets/mock_data/zlicense.json
  String get zlicense => 'assets/mock_data/zlicense.json';

  /// File path: assets/mock_data/zquestion.json
  String get zquestion => 'assets/mock_data/zquestion.json';

  /// File path: assets/mock_data/zquestion_type.json
  String get zquestionType => 'assets/mock_data/zquestion_type.json';

  /// File path: assets/mock_data/ztest.json
  String get ztest => 'assets/mock_data/ztest.json';

  /// File path: assets/mock_data/ztest_quest.json
  String get ztestQuest => 'assets/mock_data/ztest_quest.json';

  /// List of all assets
  List<String> get values => [
        tableNoticeBoard,
        tableNoticeBoardType,
        zlicense,
        zquestion,
        zquestionType,
        ztest,
        ztestQuest
      ];
}

class Assets {
  Assets._();

  static const $AssetsDatabaseGen database = $AssetsDatabaseGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsMockDataGen mockData = $AssetsMockDataGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size = null});

  final String _assetName;

  final Size? size;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

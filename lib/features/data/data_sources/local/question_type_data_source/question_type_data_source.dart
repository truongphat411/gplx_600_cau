import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:gplx_600_cau/features/data/data_sources/local/database_helper.dart';
import 'package:gplx_600_cau/features/data/models/question_type/question_type.dart';
import 'package:injectable/injectable.dart';

abstract class QuestionTypeDataSouce {
  Future<void> insertQuestionTypes() async {
    throw UnimplementedError('insertQuestionTypes');
  }
}

@LazySingleton(as: QuestionTypeDataSouce)
class QuestionTypeDataSouceImpl extends QuestionTypeDataSouce {
  QuestionTypeDataSouceImpl(this.databaseHelper);

  final DatabaseHelper databaseHelper;

  @override
  Future<void> insertQuestionTypes() async {
    try {
      final jsonString =
          await rootBundle.loadString('assets/mock_data/zquestion_type.json');
      final List<dynamic> jsonList = jsonDecode(jsonString);
      final questionTypes =
          jsonList.map((e) => QuestionType.fromJson(e)).toList();

      final batch = databaseHelper.instance?.batch();
      for (final type in questionTypes) {
        batch?.insert('ZQUESTIONTYPE', type.toJson());
      }
      await batch?.commit(noResult: true);
    } catch (e, stackTrace) {
      debugPrint('insertQuestionType failed: $e');
      debugPrint('$stackTrace');
    }
  }
}

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:gplx_600_cau/core/extension/extension.dart';
import 'package:injectable/injectable.dart';

import '../../../models/models.dart';
import '../local.dart';

abstract class QuestionTypeDataSouce {
  Future<void> insertQuestionTypes() async {
    throw UnimplementedError('questionTypeDataSouce-insertQuestionTypes');
  }

  Future<List<QuestionType>> getQuestionTypes() async {
    throw UnimplementedError('questionTypeDataSouce-getQuestionTypes');
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

  // @override
  // Future<List<QuestionTypeSummary>> getQuestionTypes() async {
  //   try {
  //     final db = await databaseHelper.database;
  //     final licenseName = SharedPreferencesStorage.getLicenseSelected();
  //     var res = await db.rawQuery('''
  //     WITH QuestionCounts AS (
  //         SELECT
  //             qt.Z_PK AS QUESTION_TYPE_PK,
  //             qt.ZTYPE_NAME,
  //             COUNT(q.Z_PK) AS TOTAL_QUESTIONS,
  //             COUNT(CASE WHEN q.ZLEARNED != 0 THEN 1 END) AS TOTAL_QUESTIONS_LEARNED,
  //             1 AS sort_order
  //         FROM
  //             ZQUESTION q
  //         JOIN
  //             ZQUESTIONTYPE qt ON q.ZQUESTIONTYPE = qt.Z_PK AND q.${licenseName.toQuestionGroupColumn} = 1
  //         GROUP BY
  //             qt.Z_PK,
  //             qt.ZTYPE_NAME
  //     )
  //     SELECT
  //         QUESTION_TYPE_PK,
  //         ZTYPE_NAME,
  //         TOTAL_QUESTIONS,
  //         TOTAL_QUESTIONS_LEARNED
  //     FROM
  //         QuestionCounts
  //     ORDER BY
  //         sort_order,
  //         COALESCE(QUESTION_TYPE_PK, 9999);
  //   ''');

  //     List<QuestionTypeSummary> list = res.isNotEmpty
  //         ? res.map((e) => QuestionTypeSummary.fromJson(e)).toList()
  //         : [];

  //     return list;
  //   } catch (e) {
  //     print('Error getting question statistics: $e');
  //     return [];
  //   }
  // }

  @override
  Future<List<QuestionType>> getQuestionTypes() async {
    try {
      final db = await databaseHelper.database;
      final res = await db.query('ZQUESTIONTYPE');
      return res.map((e) => QuestionType.fromJson(e)).toList();
    } catch (e) {
      debugPrint('Error getting question types: $e');
      return Future.error(e);
    }
  }
}

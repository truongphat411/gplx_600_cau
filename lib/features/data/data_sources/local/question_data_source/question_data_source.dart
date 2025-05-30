import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:gplx_600_cau/core/extension/extension.dart';
import 'package:gplx_600_cau/features/data/data_sources/local/database_helper.dart';
import 'package:gplx_600_cau/features/data/data_sources/local/shared_preferences_storage.dart';
import 'package:gplx_600_cau/features/data/models/question/question.dart';
import 'package:injectable/injectable.dart';

abstract class QuestionDataSource {
  Future<void> insertQuestions() async {
    throw UnimplementedError('insertQuestions');
  }

  Future<List<Question>> getQuestions() async {
    throw UnimplementedError('dataSource-getQuestions');
  }

  Future<int> updateQuestion(Question question) async {
    throw UnimplementedError('dataSource-updateQuestion');
  }
}

@LazySingleton(as: QuestionDataSource)
class QuestionDataSourceImpl extends QuestionDataSource {
  QuestionDataSourceImpl(this.databaseHelper);

  final DatabaseHelper databaseHelper;

  @override
  Future<void> insertQuestions() async {
    try {
      final jsonString =
          await rootBundle.loadString('assets/mock_data/zquestion.json');
      final List<dynamic> jsonList = jsonDecode(jsonString);
      final questions = jsonList.map((e) => Question.fromJson(e)).toList();

      final batch = databaseHelper.instance?.batch();
      for (final question in questions) {
        batch?.insert('ZQUESTION', question.toJson());
      }
      await batch?.commit(noResult: true);
    } catch (e, stackTrace) {
      debugPrint('insertQuestions failed: $e');
      debugPrint('$stackTrace');
    }
  }

  @override
  Future<List<Question>> getQuestions() async {
    try {
      final db = await databaseHelper.database;
      final licenseName = SharedPreferencesStorage.getLicenseSelected();
      final query = '''
      SELECT
        ROW_NUMBER() OVER (ORDER BY Z_PK) AS REZ1,
        Z_PK,
        ZQUESTIONCONTENT,
        ZIMAGE,
        ZOPTION1,
        ZOPTION2,
        ZOPTION3,
        ZOPTION4,
        ZANSWERIMG,
        ZANSWERDESC,
        ZCORRECT,
        ZQUESTIONTYPE,
        ZLEARNED,
        ZMARKED,
        ZWRONG,
        INGROUP_A1,
        INGROUP_A,
        INGROUP_B1,
        INGROUP_B,
        DIGROUPA1,
        DIGROUPB1,
        INGROUP_DTOE,
        ZQUESTIONDIE,
        Z_ENT,
        ZLATEST
      FROM 
        ZQUESTION
      WHERE 
        ${licenseName.toQuestionGroupColumn} = ?
    ''';

      final res = await db.rawQuery(query, [1]);

      return res.map((e) => Question.fromJson(e)).toList();
    } catch (e) {
      log('Error getting all questions: $e');
      return [];
    }
  }

  @override
  Future<int> updateQuestion(Question question) async {
    try {
      final db = await databaseHelper.database;
      Map<String, dynamic> values = {
        'ZLEARNED': question.ZLEARNED,
        'ZMARKED': question.ZMARKED,
        'ZWRONG': question.ZWRONG,
      };
      return await db.update(
        'ZQUESTION',
        values,
        where: 'Z_PK = ?',
        whereArgs: [question.Z_PK],
      );
    } catch (e) {
      print('Error updating question: $e');
      return 0;
    }
  }
}

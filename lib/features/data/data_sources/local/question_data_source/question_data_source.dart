import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:gplx_600_cau/features/data/data_sources/local/database_helper.dart';
import 'package:gplx_600_cau/features/data/data_sources/local/shared_preferences_storage.dart';
import 'package:gplx_600_cau/features/data/models/question/question.dart';
import 'package:injectable/injectable.dart';

abstract class QuestionDataSource {
  Future<void> insertQuestions() async {
    throw UnimplementedError('insertQuestions');
  }

  Future<List<Question>> getAllQuestions() async {
    throw UnimplementedError('dataSource-getAllQuestions');
  }

  Future<List<Question>> getTop60CriticalQuestions() async {
    throw UnimplementedError('dataSource-getTop60CriticalQuestions');
  }

  Future<List<Question>> getFrequentMistakes() async {
    throw UnimplementedError('dataSource-getFrequentMistakes');
  }

  Future<List<Question>> getQuestionsByType({
    required int questionType,
  }) async {
    throw UnimplementedError('dataSource-getQuestionsByType');
  }

  Future<List<Question>> getSavedQuestions() async {
    throw UnimplementedError('dataSource-getSavedQuestions');
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
  Future<List<Question>> getAllQuestions() async {
    try {
      final db = await databaseHelper.database;
      final licenseName = SharedPreferencesStorage.getLicenseSelected();
      String query = 'SELECT * FROM ZQUESTION';
      List<Object?> args = [];
      if (licenseName == 'B1') {
        query += ' WHERE ZINCLUDEB1 = ?';
        args.add(1);
      }

      final res = await db.rawQuery(query, args);
      return res.map((e) => Question.fromJson(e)).toList();
    } catch (e) {
      print('Error getting all questions: $e');
      return [];
    }
  }

  @override
  Future<List<Question>> getQuestionsByType({
    required int questionType,
  }) async {
    try {
      final db = await databaseHelper.database;
      String query = 'SELECT * FROM ZQUESTION WHERE ZQUESTIONTYPE = ?';
      List<Object?> args = [questionType];

      final res = await db.rawQuery(query, args);
      return res.map((e) => Question.fromJson(e)).toList();
    } catch (e) {
      print('Error getting questions by type: $e');
      return [];
    }
  }

  @override
  Future<List<Question>> getTop60CriticalQuestions() async {
    try {
      final db = await databaseHelper.database;
      final res = await db
          .rawQuery('SELECT * FROM ZQUESTION WHERE ZQUESTIONDIE = ?', [1]);
      return res.isNotEmpty
          ? res.map((e) => Question.fromJson(e)).toList()
          : [];
    } catch (e) {
      print('Error getting top 60 critical questions: $e');
      return [];
    }
  }

  @override
  Future<List<Question>> getSavedQuestions() async {
    try {
      final db = await databaseHelper.database;
      final licenseName = SharedPreferencesStorage.getLicenseSelected();
      String query = 'SELECT * FROM ZQUESTION WHERE ZMARKED = ?';
      List<Object?> args = [1];

      if (licenseName == 'B1') {
        query += ' AND ZINCLUDEB1 = ?';
        args.add(1);
      }

      final res = await db.rawQuery(query, args);
      return res.map((e) => Question.fromJson(e)).toList();
    } catch (e) {
      print('Error getting saved questions: $e');
      return [];
    }
  }

  @override
  Future<List<Question>> getFrequentMistakes() async {
    try {
      final db = await databaseHelper.database;
      final licenseName = SharedPreferencesStorage.getLicenseSelected();
      String query = 'SELECT * FROM ZQUESTION WHERE ZWRONG = ?';
      List<Object?> args = [1];

      if (licenseName == 'B1') {
        query += ' AND ZINCLUDEB1 = ?';
        args.add(1);
      }

      final res = await db.rawQuery(query, args);
      return res.map((e) => Question.fromJson(e)).toList();
    } catch (e) {
      print('Error getting frequent mistakes: $e');
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

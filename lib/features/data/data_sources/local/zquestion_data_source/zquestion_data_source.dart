import 'package:gplx_600_cau/features/data/data_sources/local/database_helper.dart';
import 'package:gplx_600_cau/features/data/data_sources/local/shared_preferences_storage.dart';
import 'package:gplx_600_cau/features/data/models/zquestion/zquestion.dart';
import 'package:injectable/injectable.dart';

abstract class ZQuestionDataSource {
  Future<List<ZQuestion>> getAllQuestions() async {
    throw UnimplementedError('dataSource-getAllQuestions');
  }

  Future<List<ZQuestion>> getTop60CriticalQuestions() async {
    throw UnimplementedError('dataSource-getTop60CriticalQuestions');
  }

  Future<List<ZQuestion>> getFrequentMistakes() async {
    throw UnimplementedError('dataSource-getFrequentMistakes');
  }

  Future<List<ZQuestion>> getQuestionsByType({
    required int questionType,
  }) async {
    throw UnimplementedError('dataSource-getQuestionsByType');
  }

  Future<List<ZQuestion>> getSavedQuestions() async {
    throw UnimplementedError('dataSource-getSavedQuestions');
  }

  Future<int> updateQuestion(ZQuestion question) async {
    throw UnimplementedError('dataSource-updateQuestion');
  }
}

@LazySingleton(as: ZQuestionDataSource)
class ZQuestionDataSourceImpl extends ZQuestionDataSource {
  ZQuestionDataSourceImpl(this.databaseHelper);

  final DatabaseHelper databaseHelper;

  @override
  Future<List<ZQuestion>> getAllQuestions() async {
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
      return res.map((e) => ZQuestion.fromJson(e)).toList();
    } catch (e) {
      print('Error getting all questions: $e');
      return [];
    }
  }

  @override
  Future<List<ZQuestion>> getQuestionsByType({
    required int questionType,
  }) async {
    try {
      final db = await databaseHelper.database;
      String query = 'SELECT * FROM ZQUESTION WHERE ZQUESTIONTYPE = ?';
      List<Object?> args = [questionType];

      final res = await db.rawQuery(query, args);
      return res.map((e) => ZQuestion.fromJson(e)).toList();
    } catch (e) {
      print('Error getting questions by type: $e');
      return [];
    }
  }

  @override
  Future<List<ZQuestion>> getTop60CriticalQuestions() async {
    try {
      final db = await databaseHelper.database;
      final res = await db
          .rawQuery('SELECT * FROM ZQUESTION WHERE ZQUESTIONDIE = ?', [1]);
      return res.isNotEmpty
          ? res.map((e) => ZQuestion.fromJson(e)).toList()
          : [];
    } catch (e) {
      print('Error getting top 60 critical questions: $e');
      return [];
    }
  }

  @override
  Future<List<ZQuestion>> getSavedQuestions() async {
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
      return res.map((e) => ZQuestion.fromJson(e)).toList();
    } catch (e) {
      print('Error getting saved questions: $e');
      return [];
    }
  }

  @override
  Future<List<ZQuestion>> getFrequentMistakes() async {
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
      return res.map((e) => ZQuestion.fromJson(e)).toList();
    } catch (e) {
      print('Error getting frequent mistakes: $e');
      return [];
    }
  }

  @override
  Future<int> updateQuestion(ZQuestion question) async {
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

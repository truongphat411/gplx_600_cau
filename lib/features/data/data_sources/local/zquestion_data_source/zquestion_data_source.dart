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
      final whereClause = licenseName == 'B1' ? "ZINCLUDEB1 = ?" : null;
      final whereArgs = licenseName == 'B1' ? [1] : null;
      final res = await db.query(
        "ZQUESTION",
        where: whereClause,
        whereArgs: whereArgs,
      );
      return res.map((e) => ZQuestion.fromJson(e)).toList();
    } catch (e) {
      print('Error getting all questions: $e');
      return [];
    }
  }

  @override
  Future<List<ZQuestion>> getTop60CriticalQuestions() async {
    try {
      final db = await databaseHelper.database;
      final res = await db.query(
        "ZQUESTION",
        where: "ZQUESTIONDIE = ?",
        whereArgs: [1],
      );
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
      String whereClause = "ZMARKED = ?";
      List<Object?> whereArgs = [1];
      if (licenseName == 'B1') {
        whereClause += " AND ZINCLUDEB1 = ?";
        whereArgs.add(1);
      }
      final res = await db.query(
        "ZQUESTION",
        where: whereClause,
        whereArgs: whereArgs,
      );
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
      String whereClause = "ZWRONG = ?";
      List<Object?> whereArgs = [1];
      if (licenseName == 'B1') {
        whereClause += " AND ZINCLUDEB1 = ?";
        whereArgs.add(1);
      }
      final res = await db.query(
        "ZQUESTION",
        where: whereClause,
        whereArgs: whereArgs,
      );
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

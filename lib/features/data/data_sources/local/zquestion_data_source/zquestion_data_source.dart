import 'package:gplx_600_cau/features/data/data_sources/local/database_helper.dart';
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
    final db = await databaseHelper.database;
    var res = await db.query("ZQUESTION");
    List<ZQuestion> list =
        res.isNotEmpty ? res.map((e) => ZQuestion.fromJson(e)).toList() : [];
    return list;
  }

  @override
  Future<List<ZQuestion>> getTop60CriticalQuestions() async {
    final db = await databaseHelper.database;
    var res = await db.query(
      "ZQUESTION",
      where: "ZQUESTIONDIE = ?",
      whereArgs: [1],
    );

    List<ZQuestion> list =
        res.isNotEmpty ? res.map((e) => ZQuestion.fromJson(e)).toList() : [];
    return list;
  }

  @override
  Future<List<ZQuestion>> getFrequentMistakes() async {
    final db = await databaseHelper.database;
    var res = await db.query(
      "ZQUESTION",
      where: "ZWRONG = ?",
      whereArgs: [1],
    );

    List<ZQuestion> list =
        res.isNotEmpty ? res.map((e) => ZQuestion.fromJson(e)).toList() : [];
    return list;
  }

  @override
  Future<int> updateQuestion(ZQuestion question) async {
    final db = await databaseHelper.database;
    Map<String, dynamic> values = {
      'ZLEARNED': question.ZLEARNED,
      'ZMARKED': question.ZMARKED,
      'ZWRONG': question.ZWRONG,
      'ZAWSA1': question.ZAWSA1,
    };
    return await db.update(
      'ZQUESTION',
      values,
      where: 'Z_PK = ?',
      whereArgs: [question.Z_PK],
    );
  }
}

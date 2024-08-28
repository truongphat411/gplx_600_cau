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
}

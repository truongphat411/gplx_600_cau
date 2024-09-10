import 'package:gplx_600_cau/features/data/data_sources/local/database_helper.dart';
import 'package:gplx_600_cau/features/data/data_sources/local/shared_preferences_storage.dart';
import 'package:gplx_600_cau/features/data/models/znumberquestionpertype/znumberquestionpertype.dart';
import 'package:injectable/injectable.dart';

abstract class ZNumberQuestionPerTypeDataSource {
  Future<List<ZNumberQuestionPerType>> getQuestionStatistics() async {
    throw UnimplementedError('getQuestionStatistics');
  }
}

@LazySingleton(as: ZNumberQuestionPerTypeDataSource)
class ZNumberQuestionPerTypeDataSourceImpl
    extends ZNumberQuestionPerTypeDataSource {
  ZNumberQuestionPerTypeDataSourceImpl(this.databaseHelper);

  final DatabaseHelper databaseHelper;

  @override
  Future<List<ZNumberQuestionPerType>> getQuestionStatistics() async {
    try {
      final db = await databaseHelper.database;
      final licenseName = SharedPreferencesStorage.getLicenseSelected();
      var res = await db.rawQuery('''
      WITH QuestionCounts AS (
        SELECT 
            ZQUESTIONTYPE.Z_PK AS QUESTION_TYPE_PK,
            ZQUESTIONTYPE.ZTYPE_NAME, 
            ZQUESTIONTYPE.ZDESC,
            COUNT(ZQUESTION.Z_PK) AS TOTALQUESTIONS, 
            COUNT(CASE WHEN ZQUESTION.ZLEARNED != 0 THEN 1 END) AS TOTALQUESTIONSLEARNED,
            3 AS SortOrder
        FROM 
            ZNUMBERQUESTIONPERTYPE
        JOIN 
            ZQUESTIONTYPE ON ZNUMBERQUESTIONPERTYPE.ZQUESTIONTYPE = ZQUESTIONTYPE.Z_PK
        JOIN 
            ZLICENSE ON ZNUMBERQUESTIONPERTYPE.ZLICENSE = ZLICENSE.Z_PK
        JOIN  
            ZQUESTION ON ZQUESTION.ZQUESTIONTYPE = ZQUESTIONTYPE.Z_PK
        WHERE 
            ZLICENSE.ZNAME = ?
        GROUP BY 
            ZQUESTIONTYPE.Z_PK,
            ZQUESTIONTYPE.ZTYPE_NAME, 
            ZQUESTIONTYPE.ZDESC
    ),
    TotalCounts AS (
        SELECT
            NULL AS QUESTION_TYPE_PK,
            'Tất cả câu hỏi' AS ZTYPE_NAME,
            'Tất cả câu hỏi' AS ZDESC,
            SUM(TOTALQUESTIONS) AS TOTALQUESTIONS, 
            SUM(TOTALQUESTIONSLEARNED) AS TOTALQUESTIONSLEARNED,
            1 AS SortOrder
        FROM 
            QuestionCounts
    ),
    CriticalQuestions AS (
        SELECT
            NULL AS QUESTION_TYPE_PK,
            '60 câu điểm liệt' AS ZTYPE_NAME,
            '60 câu điểm liệt' AS ZDESC,
            COUNT(ZQUESTION.Z_PK) AS TOTALQUESTIONS,
            COUNT(CASE WHEN ZQUESTION.ZLEARNED != 0 THEN 1 END) AS TOTALQUESTIONSLEARNED,
            0 AS SortOrder
        FROM 
            ZQUESTION
        WHERE
            ZQUESTION.ZQUESTIONDIE = 1
        GROUP BY 
            ZQUESTION.ZQUESTIONDIE
    ),
    AllCounts AS (
        SELECT 
            QUESTION_TYPE_PK,
            ZTYPE_NAME,
            ZDESC,
            TOTALQUESTIONS,
            TOTALQUESTIONSLEARNED,
            SortOrder
        FROM 
            QuestionCounts

        UNION ALL

        SELECT
            QUESTION_TYPE_PK,
            ZTYPE_NAME,
            ZDESC,
            TOTALQUESTIONS,
            TOTALQUESTIONSLEARNED,
            SortOrder
        FROM 
            TotalCounts

        UNION ALL

        SELECT
            QUESTION_TYPE_PK,
            ZTYPE_NAME,
            ZDESC,
            TOTALQUESTIONS,
            TOTALQUESTIONSLEARNED,
            SortOrder
        FROM 
            CriticalQuestions
    )

    SELECT 
        QUESTION_TYPE_PK,
        ZTYPE_NAME,
        ZDESC,
        TOTALQUESTIONS,
        TOTALQUESTIONSLEARNED
    FROM 
        AllCounts

    ORDER BY 
        SortOrder,
        QUESTION_TYPE_PK; 
    ''', [licenseName]);

      List<ZNumberQuestionPerType> list = res.isNotEmpty
          ? res.map((e) => ZNumberQuestionPerType.fromJson(e)).toList()
          : [];

      return list;
    } catch (e) {
      print('Error getting question statistics: $e');
      return [];
    }
  }
}

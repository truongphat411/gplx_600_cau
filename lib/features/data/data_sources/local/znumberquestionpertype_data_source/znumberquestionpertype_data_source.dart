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
      SELECT 
        ZNUMBERQUESTIONPERTYPE.Z_PK,
        ZQUESTIONTYPE.ZTYPE_NAME, 
        ZQUESTIONTYPE.ZDESC,
        COUNT(ZQUESTION.Z_PK) AS TOTALQUESTIONS, 
        COUNT(CASE WHEN ZQUESTION.ZLEARNED = 1 THEN 1 END) AS TOTALQUESTIONSLEARNED
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
        ZNUMBERQUESTIONPERTYPE.Z_PK, 
        ZQUESTIONTYPE.ZTYPE_NAME, 
        ZQUESTIONTYPE.ZDESC;
    ''', [licenseName]);

      List<ZNumberQuestionPerType> list = res.isNotEmpty
          ? res.map((e) => ZNumberQuestionPerType.fromJson(e)).toList()
          : [];

      return list;
    } catch (e) {
      // Handle errors
      print('Error getting question statistics: $e');
      return [];
    }
  }
}

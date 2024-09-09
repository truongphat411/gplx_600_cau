import 'package:gplx_600_cau/features/data/data_sources/local/database_helper.dart';
import 'package:gplx_600_cau/features/data/models/zlicense/zlicense.dart';
import 'package:injectable/injectable.dart';

abstract class ZLicenseDataSource {
  Future<List<ZLicense>> getAllLicenses() async {
    throw UnimplementedError('getAllLicenses');
  }
}

@LazySingleton(as: ZLicenseDataSource)
class ZLicenseDataSourceImpl extends ZLicenseDataSource {
  ZLicenseDataSourceImpl(this.databaseHelper);

  final DatabaseHelper databaseHelper;

  @override
  Future<List<ZLicense>> getAllLicenses() async {
    try {
      final db = await databaseHelper.database;
      var res = await db.query(
        "ZLICENSE",
        where: "ZNAME IN (?, ?, ?, ?, ?, ?)",
        whereArgs: ['B1', 'B2', 'C', 'D', 'E', 'F'],
      );

      // Mapping the result to a list of ZLicense objects
      List<ZLicense> list =
          res.isNotEmpty ? res.map((e) => ZLicense.fromJson(e)).toList() : [];

      return list;
    } catch (e) {
      print('Error getting all licenses: $e');
      return [];
    }
  }
}

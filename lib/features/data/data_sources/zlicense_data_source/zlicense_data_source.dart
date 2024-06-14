import 'package:gplx_600_cau/features/data/data_sources/db/database_helper.dart';
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
    final db = await databaseHelper.database;
    var res = await db.query("ZLICENSE");
    List<ZLicense> list =
        res.isNotEmpty ? res.map((e) => ZLicense.fromJson(e)).toList() : [];
    return list;
  }
}

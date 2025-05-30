import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:gplx_600_cau/features/data/data_sources/local/database_helper.dart';
import 'package:gplx_600_cau/features/data/models/license/license.dart';
import 'package:injectable/injectable.dart';

abstract class LicenseDataSource {
  Future<void> insertLicenses() async {
    throw UnimplementedError('insertLicenses');
  }

  Future<List<License>> getAllLicenses() async {
    throw UnimplementedError('getAllLicenses');
  }
}

@LazySingleton(as: LicenseDataSource)
class LicenseDataSourceImpl extends LicenseDataSource {
  LicenseDataSourceImpl(this.databaseHelper);

  final DatabaseHelper databaseHelper;

  @override
  Future<void> insertLicenses() async {
    try {
      final jsonString =
          await rootBundle.loadString('assets/mock_data/zlicense.json');
      final List<dynamic> jsonList = jsonDecode(jsonString);
      final licenses = jsonList.map((e) => License.fromJson(e)).toList();

      final batch = databaseHelper.instance?.batch();
      for (final license in licenses) {
        batch?.insert('ZLICENSE', license.toJson());
      }
      await batch?.commit(noResult: true);
    } catch (e, stackTrace) {
      debugPrint('insertLicense failed: $e');
      debugPrint('$stackTrace');
    }
  }

  @override
  Future<List<License>> getAllLicenses() async {
    try {
      final db = await databaseHelper.database;
      var res = await db.rawQuery(
        '''
        SELECT * FROM ZLICENSE
        ''',
      );
      List<License> list =
          res.isNotEmpty ? res.map((e) => License.fromJson(e)).toList() : [];

      return list;
    } catch (e) {
      print('Error getting all licenses: $e');
      return [];
    }
  }
}

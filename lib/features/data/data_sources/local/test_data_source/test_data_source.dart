import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:gplx_600_cau/features/data/data_sources/local/database_helper.dart';
import 'package:gplx_600_cau/features/data/models/test/test.dart';
import 'package:injectable/injectable.dart';

import '../local.dart';

abstract class TestDataSource {
  Future<void> insertTests() async {
    throw UnimplementedError('testDataSource-insertTests');
  }

  Future<List<Test>> getTests() async {
    throw UnimplementedError('testDataSource-getTests');
  }
}

@LazySingleton(as: TestDataSource)
class TestDataSourceImpl extends TestDataSource {
  TestDataSourceImpl(this.databaseHelper);

  final DatabaseHelper databaseHelper;

  @override
  Future<void> insertTests() async {
    try {
      final jsonString =
          await rootBundle.loadString('assets/mock_data/ztest.json');
      final List<dynamic> jsonList = jsonDecode(jsonString);
      final tests = jsonList.map((e) => Test.fromJson(e)).toList();

      final batch = databaseHelper.instance?.batch();
      for (final test in tests) {
        batch?.insert('ZTEST', test.toJson());
      }
      await batch?.commit(noResult: true);
    } catch (e, stackTrace) {
      debugPrint('insertTest failed: $e');
      debugPrint('$stackTrace');
    }
  }

  @override
  Future<List<Test>> getTests() async {
    try {
      final db = await databaseHelper.database;
      final licenseName = SharedPreferencesStorage.getLicenseSelected();
      final res = await db.query(
        'ZTEST',
        where: 'CLASS_LICENSE = ?',
        whereArgs: [licenseName],
      );

      return res.map((e) => Test.fromJson(e)).toList();
    } catch (e) {
      debugPrint('Error getting tests: $e');
      return Future.error(e);
    }
  }
}

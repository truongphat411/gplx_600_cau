import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:gplx_600_cau/features/data/data_sources/local/database_helper.dart';
import 'package:gplx_600_cau/features/data/models/test_quest/test_quest.dart';
import 'package:injectable/injectable.dart';

import '../local.dart';

abstract class TestQuestDataSource {
  Future<void> insertTestQuest() async {
    throw UnimplementedError('testQuestDataSource-insertZTestQuest');
  }

  Future<List<TestQuest>> getTestQuests() async {
    throw UnimplementedError('testQuestDataSource-getTestQuests');
  }
}

@LazySingleton(as: TestQuestDataSource)
class TestQuestDataSourceImpl extends TestQuestDataSource {
  TestQuestDataSourceImpl(this.databaseHelper);

  final DatabaseHelper databaseHelper;

  @override
  Future<void> insertTestQuest() async {
    try {
      final jsonString =
          await rootBundle.loadString('assets/mock_data/ztest_quest.json');
      final List<dynamic> jsonList = jsonDecode(jsonString);
      final testQuests = jsonList.map((e) => TestQuest.fromJson(e)).toList();

      final batch = databaseHelper.instance?.batch();
      for (final testQuest in testQuests) {
        batch?.insert('ZTESTQUEST', testQuest.toJson());
      }
      await batch?.commit(noResult: true);
    } catch (e, stackTrace) {
      debugPrint('insertTestQuest failed: $e');
      debugPrint('$stackTrace');
    }
  }

  @override
  Future<List<TestQuest>> getTestQuests() async {
    try {
      final db = await databaseHelper.database;
      final licenseName = SharedPreferencesStorage.getLicenseSelected();
      final res = await db.rawQuery('''
      SELECT ZTESTQUEST.*
      FROM ZTESTQUEST
      INNER JOIN ZTEST ON ZTEST.IDTEST = ZTESTQUEST.TESTID
      WHERE ZTEST.CLASS_LICENSE = ?
    ''', [licenseName]);

      return res.map((e) => TestQuest.fromJson(e)).toList();
    } catch (e) {
      debugPrint('Error getting TestQuest: $e');
      return Future.error(e);
    }
  }
}

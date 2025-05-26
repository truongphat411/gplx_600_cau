import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:gplx_600_cau/features/data/data_sources/local/database_helper.dart';
import 'package:gplx_600_cau/features/data/models/test_quest/test_quest.dart';
import 'package:injectable/injectable.dart';

abstract class TestQuestDataSource {
  Future<void> insertTestQuest() async {
    throw UnimplementedError('insertZTestQuest');
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
}

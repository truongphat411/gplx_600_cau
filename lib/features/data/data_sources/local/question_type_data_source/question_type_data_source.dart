import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../../models/models.dart';
import '../local.dart';

abstract class QuestionTypeDataSouce {
  Future<void> insertQuestionTypes() async {
    throw UnimplementedError('questionTypeDataSouce-insertQuestionTypes');
  }

  Future<List<QuestionType>> getQuestionTypes() async {
    throw UnimplementedError('questionTypeDataSouce-getQuestionTypes');
  }
}

@LazySingleton(as: QuestionTypeDataSouce)
class QuestionTypeDataSouceImpl extends QuestionTypeDataSouce {
  QuestionTypeDataSouceImpl(this.databaseHelper);

  final DatabaseHelper databaseHelper;

  @override
  Future<void> insertQuestionTypes() async {
    try {
      final jsonString =
          await rootBundle.loadString('assets/mock_data/zquestion_type.json');
      final List<dynamic> jsonList = jsonDecode(jsonString);
      final questionTypes =
          jsonList.map((e) => QuestionType.fromJson(e)).toList();

      final batch = databaseHelper.instance?.batch();
      for (final type in questionTypes) {
        batch?.insert('ZQUESTIONTYPE', type.toJson());
      }
      await batch?.commit(noResult: true);
    } catch (e, stackTrace) {
      debugPrint('insertQuestionType failed: $e');
      debugPrint('$stackTrace');
    }
  }

  @override
  Future<List<QuestionType>> getQuestionTypes() async {
    try {
      final db = await databaseHelper.database;
      final res = await db.query('ZQUESTIONTYPE');
      return res.map((e) => QuestionType.fromJson(e)).toList();
    } catch (e) {
      debugPrint('Error getting question types: $e');
      return Future.error(e);
    }
  }
}

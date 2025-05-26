import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:gplx_600_cau/features/data/data_sources/local/database_helper.dart';
import 'package:gplx_600_cau/features/data/models/table_notice_board/table_notice_board.dart';
import 'package:injectable/injectable.dart';

abstract class TableNoiceBoardDataSource {
  Future<void> insertTableNoiceBoard() async {
    throw UnimplementedError('insertTableNoiceBoard');
  }
}

@LazySingleton(as: TableNoiceBoardDataSource)
class TableNoiceBoardDataSourceImpl extends TableNoiceBoardDataSource {
  TableNoiceBoardDataSourceImpl(this.databaseHelper);

  final DatabaseHelper databaseHelper;

  @override
  Future<void> insertTableNoiceBoard() async {
    try {
      final jsonString = await rootBundle
          .loadString('assets/mock_data/table_notice_board.json');
      final List<dynamic> jsonList = jsonDecode(jsonString);
      final noticeBoards =
          jsonList.map((e) => TableNoticeBoard.fromJson(e)).toList();

      final batch = databaseHelper.instance?.batch();
      for (final noticeBoard in noticeBoards) {
        batch?.insert('TABLE_NOTICE_BOARD', noticeBoard.toJson());
      }
      await batch?.commit(noResult: true);
    } catch (e, stackTrace) {
      debugPrint('insertTableNoiceBoard failed: $e');
      debugPrint('$stackTrace');
    }
  }
}

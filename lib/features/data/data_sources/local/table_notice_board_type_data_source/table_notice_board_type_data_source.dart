import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:gplx_600_cau/features/data/data_sources/local/database_helper.dart';
import 'package:gplx_600_cau/features/data/models/table_notice_board_type/table_notice_board_type.dart';
import 'package:injectable/injectable.dart';

abstract class TableNoiceBoardTypeDataSource {
  Future<void> insertTableNoiceBoardType() async {
    throw UnimplementedError('insertTableNoiceBoard');
  }
}

@LazySingleton(as: TableNoiceBoardTypeDataSource)
class TableNoiceBoardTypeDataSourceImpl extends TableNoiceBoardTypeDataSource {
  TableNoiceBoardTypeDataSourceImpl(this.databaseHelper);

  final DatabaseHelper databaseHelper;

  @override
  Future<void> insertTableNoiceBoardType() async {
    try {
      final jsonString = await rootBundle
          .loadString('assets/mock_data/table_notice_board_type.json');
      final List<dynamic> jsonList = jsonDecode(jsonString);
      final noticeBoardTypes =
          jsonList.map((e) => TableNoticeBoardType.fromJson(e)).toList();

      final batch = databaseHelper.instance?.batch();
      for (final type in noticeBoardTypes) {
        batch?.insert('TABLE_NOTICE_BOARD_TYPE', type.toJson());
      }
      await batch?.commit(noResult: true);
    } catch (e, stackTrace) {
      debugPrint('insertTableNoiceBoardType failed: $e');
      debugPrint('$stackTrace');
    }
  }
}

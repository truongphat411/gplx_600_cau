import 'package:freezed_annotation/freezed_annotation.dart';

part 'table_notice_board.freezed.dart';
part 'table_notice_board.g.dart';

@freezed
class TableNoticeBoard with _$TableNoticeBoard {
  const factory TableNoticeBoard({
    int? ID,
    int? Type_ID,
    String? Name,
    String? NameEN,
    String? Detail,
    String? Icon,
    String? UpdateDay,
    int? isDelete,
    String? ShortName,
    String? Description,
    String? DisplayOrder,
  }) = _TableNoticeBoard;

  factory TableNoticeBoard.fromJson(Map<String, dynamic> json) =>
      _$TableNoticeBoardFromJson(json);
}

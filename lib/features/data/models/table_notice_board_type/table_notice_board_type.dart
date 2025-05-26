import 'package:freezed_annotation/freezed_annotation.dart';

part 'table_notice_board_type.freezed.dart';
part 'table_notice_board_type.g.dart';

@freezed
class TableNoticeBoardType with _$TableNoticeBoardType {
  const factory TableNoticeBoardType({
    int? Type_ID,
    String? Type_Name,
    String? Icon,
  }) = _TableNoticeBoardType;

  factory TableNoticeBoardType.fromJson(Map<String, dynamic> json) =>
      _$TableNoticeBoardTypeFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_quest.freezed.dart';
part 'test_quest.g.dart';

@freezed
class TestQuest with _$TestQuest {
  const factory TestQuest({
    int? ZQUESTIONID,
    int? TESTID,
    int? ZTESTQUESTID,
    String? ZANSWER,
    String? ZHISTORY,
    int? ZNUMBERWRONG,
    int? ZRESULT,
  }) = _TestQuest;

  factory TestQuest.fromJson(Map<String, dynamic> json) =>
      _$TestQuestFromJson(json);
}

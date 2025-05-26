import 'package:freezed_annotation/freezed_annotation.dart';

part 'test.freezed.dart';
part 'test.g.dart';

@freezed
class Test with _$Test {
  const factory Test({
    int? IDTEST,
    int? NAME_TEST,
    String? CLASS_LICENSE,
    int? SPEND_TIME, 
    int? TEST_SCORE,
    int? ISPASS,
    int? LASTDURATION,
    int? LAST_INDEX,
    int? STATUS,
    int? WRONG_NUMBER,
    int? YET_NUMBER,
    int? SOS_VIOLATION,
  }) = _Test;

  factory Test.fromJson(Map<String, dynamic> json) => _$TestFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'zlicense.freezed.dart';
part 'zlicense.g.dart';

@freezed
class ZLicense with _$ZLicense {
  const factory ZLicense({
    String? ZCONTENT,
    String? ZDESC,
    int? ZDURATION,
    String? ZNAME,
    int? ZNUMBEROFCORRECTQUESTION,
    int? zNUMBEROFQUESTION,
    int? zNUMBEROFTEST,
    int? Z_ENT,
    int? Z_OPT,
    int? Z_PK,
    @Default(false) bool isSelected,
  }) = _ZLicense;

  const ZLicense._();

  factory ZLicense.fromJson(Map<String, Object?> json) =>
      _$ZLicenseFromJson(json);
}

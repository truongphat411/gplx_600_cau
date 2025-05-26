import 'package:freezed_annotation/freezed_annotation.dart';

part 'license.freezed.dart';
part 'license.g.dart';

@freezed
class License with _$License {
  const factory License({
    int? Z_PK,
    int? Z_ENT,
    int? Z_OPT,
    String? ZNAME,
    int? ZNUMBEROFQUESTION,
    int? ZPASSSCORE,
    double? ZEXAMPERIOD,
    int? ZNUMBEROFTEST,
    String? ZCONTENT,
    String? ZDESC,
    String? ZDESC_EN,
  }) = _ZLicense;

  const License._();

  factory License.fromJson(Map<String, Object?> json) =>
      _$LicenseFromJson(json);
}

part of 'zlicense_bloc.dart';

@freezed
class ZLicenseEvent with _$ZLicenseEvent {
  const factory ZLicenseEvent.started() = ZLicenseEventStarted;
  const factory ZLicenseEvent.getZLicense() = ZLicenseEventGetZLicense;
}
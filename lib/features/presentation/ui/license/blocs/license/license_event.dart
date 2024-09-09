part of 'license_bloc.dart';

@freezed
class LicenseEvent with _$LicenseEvent {
  const factory LicenseEvent.getAllLicenses(String Z_NAME) =
      LicenseEventGetAllLicense;
}

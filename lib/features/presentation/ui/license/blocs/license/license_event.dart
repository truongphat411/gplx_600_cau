part of 'license_bloc.dart';

@freezed
class LicenseEvent with _$LicenseEvent {
  const factory LicenseEvent.getAllLicenses() = LicenseEventGetAllLicense;
  const factory LicenseEvent.selectedZLicense(int? Z_PK) =
      LicenseEventSelectedLincense;
}

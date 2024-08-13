part of 'license_bloc.dart';

@freezed
class LicenseState with _$LicenseState {
  const factory LicenseState.initial() = LicenseStateInItal;
  const factory LicenseState.loading() = LicenseStateLoading;
  const factory LicenseState.data({
    required List<ZLicense> zLicenses,
  }) = LicenseStateData;
  const factory LicenseState.failure({required Exception error}) =
      LicenseStateFailure;
}

part of 'zlicense_bloc.dart';


@freezed
class ZLicenseState with _$ZLicenseState {
  const factory ZLicenseState.initial() = ZLicenseStateInital;
  const factory ZLicenseState.loading() = ZLicenseStateLoading;
  const factory ZLicenseState.data({
    required List<ZLicense> zlicenses,
  }) = ZLicenseStateData;
  const factory ZLicenseState.failure({required Exception error}) =
      ZLicenseStateFailure;
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gplx_600_cau/features/data/models/license/license.dart';
import 'package:gplx_600_cau/features/domain/repositories/license_repository/license_repository.dart';
import 'package:injectable/injectable.dart';

part 'license_bloc.freezed.dart';
part 'license_event.dart';
part 'license_state.dart';

@injectable
class LicenseBloc extends Bloc<LicenseEvent, LicenseState> {
  LicenseRepository zLicenseRepository;
  LicenseBloc(this.zLicenseRepository) : super(const LicenseState.initial()) {
    on<LicenseEvent>((event, emit) async {
      await event.map(
        getAllLicenses: (value) async {
          // final licenseSelected = value.Z_NAME;
          // final result = await zLicenseRepository.getAllLicenses();
          // result.fold((l) => null, (r) {
          //   final updatedZLicenses = r.map((zlicense) {
          //     if (zlicense.ZNAME == licenseSelected) {
          //       return zlicense.copyWith(isSelected: !zlicense.isSelected);
          //     }
          //     return zlicense;
          //   }).toList();
          //   emit(
          //     LicenseState.data(zLicenses: updatedZLicenses),
          //   );
          // });
        },
      );
    });
  }
}

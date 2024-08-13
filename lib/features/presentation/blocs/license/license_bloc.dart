import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gplx_600_cau/features/data/models/zlicense/zlicense.dart';
import 'package:gplx_600_cau/features/domain/repositories/zlicense_repository/zlicense_repository.dart';
import 'package:injectable/injectable.dart';

part 'license_bloc.freezed.dart';
part 'license_event.dart';
part 'license_state.dart';

@injectable
class LicenseBloc extends Bloc<LicenseEvent, LicenseState> {
  ZLicenseRepository zLicenseRepository;
  LicenseBloc(this.zLicenseRepository) : super(const LicenseState.initial()) {
    on<LicenseEvent>((event, emit) async {
      await event.map(
        getAllLicenses: (value) async {
          emit(const LicenseStateLoading());
          final result = await zLicenseRepository.getAllLicenses();
          result.fold(
            (l) => null,
            (r) => emit(
              LicenseState.data(zLicenses: r),
            ),
          );
        },
        selectedZLicense: (value) async {
          final selectedId = value.Z_PK;
          final result = await zLicenseRepository.getAllLicenses();
          result.fold((l) => null, (r) {
            final updatedZLicenses = r.map((zlicense) {
              if (zlicense.Z_PK == selectedId) {
                return zlicense.copyWith(isSelected: !zlicense.isSelected);
              }
              return zlicense;
            }).toList();
            emit(
              LicenseState.data(zLicenses: updatedZLicenses),
            );
          });
        },
      );
    });
  }
}

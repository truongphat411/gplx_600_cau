import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gplx_600_cau/features/data/models/zlicense/zlicense.dart';
import 'package:gplx_600_cau/features/domain/repositories/zlicense_repository/zlicense_repository.dart';
import 'package:injectable/injectable.dart';

part 'zlicense_bloc.freezed.dart';
part 'zlicense_event.dart';
part 'zlicense_state.dart';

@injectable
class ZLicenseBloc extends Bloc<ZLicenseEvent, ZLicenseState> {
  ZLicenseRepository zLicenseRepository;
  ZLicenseBloc(this.zLicenseRepository) : super(const ZLicenseState.initial()) {
    on<ZLicenseEvent>((event, emit) async {
      await event.map(
        started: (value) {},
        getZLicense: (value) async {
          emit(const ZLicenseStateLoading());
          final result = await zLicenseRepository.getAllLicenses();
          result.fold(
            (l) => null,
            (r) => emit(
              ZLicenseState.data(zlicenses: r),
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
              ZLicenseState.data(zlicenses: updatedZLicenses),
            );
          });
        },
      );
    });
  }
}

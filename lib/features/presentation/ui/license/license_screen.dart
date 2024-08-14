import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gplx_600_cau/core/extension/theme_data_extension.dart';
import 'package:gplx_600_cau/di.dart';
import 'package:gplx_600_cau/features/presentation/ui/license/blocs/license/license_bloc.dart';
import 'package:gplx_600_cau/features/presentation/components/common_app_bar.dart';

part 'widgets/license_tile.dart';

class LicenseScreen extends StatelessWidget {
  const LicenseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).appColors;
    return Scaffold(
      backgroundColor: appColors.backgroundPrimary,
      appBar: CommonAppBar(
        title: Text(
          'Chọn giấy phép',
          style: TextStyle(
            color: appColors.textPrimary,
            fontWeight: FontWeight.w700,
          ),
        ),
        elevation: 1,
      ),
      body: BlocProvider(
        create: ((context) => getIt<LicenseBloc>()),
        child:
            BlocBuilder<LicenseBloc, LicenseState>(builder: (context, state) {
          return state.maybeMap(
            orElse: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            loading: (e) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            data: (value) {
              final licenses = value.zLicenses;
              return ListView.builder(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: licenses.length,
                  itemBuilder: (context, index) {
                    if (licenses.isEmpty) {
                      return const Center(
                        child: Text('ZLicense Empty'),
                      );
                    } else {
                      return GestureDetector(
                        onTap: () {
                          context.read<LicenseBloc>().add(
                                LicenseEvent.selectedZLicense(
                                    licenses[index].Z_PK),
                              );
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ),
                          child: _LicenseTile(
                            licenseName: licenses[index].ZNAME,
                            description: licenses[index].ZCONTENT,
                            isSelected: licenses[index].isSelected,
                          ),
                        ),
                      );
                    }
                  });
            },
          );
        }),
      ),
    );
  }
}

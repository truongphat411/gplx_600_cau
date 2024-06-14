import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gplx_600_cau/di.dart';
import 'package:gplx_600_cau/features/presentation/blocs/home/zlicense/zlicense_bloc.dart';
import 'package:gplx_600_cau/features/presentation/components/common_app_bar.dart';
import 'package:gplx_600_cau/features/presentation/ui/zlicense/widgets/zlicense_tile.dart';

class ZLicenseScreen extends StatelessWidget {
  const ZLicenseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        title: Text(
          'Chọn giấy phép',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700
          ),
        ),
      ),
      body: BlocProvider(
        create: ((context) =>
            getIt<ZLicenseBloc>()..add(const ZLicenseEvent.getZLicense())),
        child:
            BlocBuilder<ZLicenseBloc, ZLicenseState>(builder: (context, state) {
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
              final zlicenses = value.zlicenses;
              return ListView.builder(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: zlicenses.length,
                  itemBuilder: (context, index) {
                    if (zlicenses.isEmpty) {
                      return const Center(
                        child: Text('ZLicense Empty'),
                      );
                    } else {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 10,
                        ),
                        child: ZLicenseTile(
                          licenseName: zlicenses[index].ZNAME,
                          description: zlicenses[index].ZCONTENT,
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

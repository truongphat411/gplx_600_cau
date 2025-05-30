import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gplx_600_cau/core/extension/theme_data_extension.dart';
import 'package:gplx_600_cau/features/presentation/components/common_app_bar.dart';
import 'package:gplx_600_cau/features/presentation/ui/home/blocs/home_bloc.dart';

part 'widgets/license_tile.dart';

class LicenseScreen extends StatefulWidget {
  const LicenseScreen({
    required this.homeBloc,
    super.key,
  });

  final HomeBloc homeBloc;

  @override
  _LicenseScreenState createState() => _LicenseScreenState();
}

class _LicenseScreenState extends State<LicenseScreen> {
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
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
          bloc: widget.homeBloc,
          builder: (context, state) {
            final licenses = state.licenses;
            final licenseName = state.licenseName;
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
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                    ),
                    child: _LicenseTile(
                        licenseName: licenses[index].ZNAME ?? '',
                        description: licenses[index].ZCONTENT,
                        licenseNameSelected: licenseName ?? '',
                        onTap: () {
                          Navigator.pop(context, licenses[index].ZNAME ?? '');
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text(
                                    'Đã chọn giấy phép: ${licenses[index].ZNAME ?? ''}')),
                          );
                        }),
                  );
                }
              },
            );
          }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gplx_600_cau/core/extension/theme_data_extension.dart';
import 'package:gplx_600_cau/features/presentation/components/common_app_bar.dart';

class MemoryTipsScreen extends StatelessWidget {
  const MemoryTipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).appColors;
    return Scaffold(
        appBar: CommonAppBar(
          title: Text(
            'MemoryTipsScreen',
            style: TextStyle(
              color: appColors.textPrimary,
              fontWeight: FontWeight.w700,
            ),
          ),
          elevation: 1,
        ),
        body: const Center(
          child: Text('MemoryTipsScreen'),
        ));
  }
}

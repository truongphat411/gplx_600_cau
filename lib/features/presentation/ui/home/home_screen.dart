import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gplx_600_cau/core/extension/theme_data_extension.dart';
import 'package:gplx_600_cau/core/gen/assets.gen.dart';
import 'package:gplx_600_cau/features/presentation/components/common_app_bar.dart';

part 'widgets/item_home_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).appColors;
    return Scaffold(
      appBar: CommonAppBar(
        title: Text(
          'Home',
          style: TextStyle(
            color: appColors.textPrimary,
            fontWeight: FontWeight.w700,
          ),
        ),
        elevation: 1,
      ),
      body: Column(children: [

      ],),
    );
  }
}

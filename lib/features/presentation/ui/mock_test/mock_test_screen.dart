import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gplx_600_cau/core/extension/theme_data_extension.dart';
import 'package:gplx_600_cau/features/presentation/components/common_app_bar.dart';
import 'package:gplx_600_cau/features/presentation/ui/home/blocs/home_bloc.dart';

import '../../../data/models/models.dart';

// part 'widgets/mock_test_list.dart';

class MockTestScreen extends StatelessWidget {
  const MockTestScreen({
    required this.homeBloc,
    super.key,
  });

  final HomeBloc homeBloc;

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).appColors;
    return Scaffold(
      appBar: CommonAppBar(
        title: Text(
          'MockTestScreen',
          style: TextStyle(
            color: appColors.textPrimary,
            fontWeight: FontWeight.w700,
          ),
        ),
        elevation: 1,
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        bloc: homeBloc,
        builder: (context, state) {
          final tests = state.tests;
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    // child: _MockTestList(
                    //   tests: tests.slices(3).toList(),
                    // ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

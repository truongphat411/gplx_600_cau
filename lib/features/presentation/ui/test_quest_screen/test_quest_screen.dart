import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gplx_600_cau/core/enum/question_type_enum.dart';
import 'package:gplx_600_cau/core/extension/theme_data_extension.dart';
import 'package:gplx_600_cau/features/presentation/ui/home/blocs/home_bloc.dart';

import '../../components/common_app_bar.dart';
import '../question/question_screen.dart';

class TestQuestScreen extends StatelessWidget {
  const TestQuestScreen({
    super.key,
    required this.homeBloc,
    required this.testID,
  });

  final HomeBloc homeBloc;
  final int testID;

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).appColors;
    return Scaffold(
      appBar: CommonAppBar(
        title: Text(
          'Thi',
          style: TextStyle(
            color: appColors.textPrimary,
            fontWeight: FontWeight.w700,
          ),
        ),
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(true);
          },
        ),
      ),
      floatingActionButton: Container(),
      body: BlocBuilder<HomeBloc, HomeState>(
          bloc: homeBloc,
          builder: (context, state) {
            final questions = homeBloc.getQuestionsByTest(
              questions: state.questions,
              testQuests: state.testQuests,
              testID: testID,
            );
            return QuestionScreen(
              questions: questions,
              questionType: QuestionTypeEnum.test,
              homeBloc: homeBloc,
            );
          }),
    );
  }
}

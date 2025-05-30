import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gplx_600_cau/core/extension/theme_data_extension.dart';
import 'package:gplx_600_cau/features/presentation/components/common_app_bar.dart';
import 'package:gplx_600_cau/features/presentation/ui/home/blocs/home_bloc.dart';

import '../../../../core/enum/question_type_enum.dart';
import '../../../../core/routes/router.dart';
import 'widgets/question_type_tile.dart';

class QuestionTypes extends StatelessWidget {
  const QuestionTypes({
    super.key,
    required this.homeBloc,
  });

  final HomeBloc homeBloc;

  @override
  Widget build(BuildContext context) {
    void navigateToReviewQuestions(
      QuestionTypeEnum questionType, {
      int? questionTypePK,
      String? questionTypeName,
    }) {
      ReviewQuestionsRoute(
        questionType: questionType,
        questionTypePK: questionTypePK,
        questionTypeName: questionTypeName,
        $extra: homeBloc,
      ).push(context);
    }

    final appColors = Theme.of(context).appColors;
    return Scaffold(
        appBar: CommonAppBar(
          title: Text(
            'Ôn tập câu hỏi',
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
        body: BlocBuilder<HomeBloc, HomeState>(
          bloc: homeBloc,
          builder: (context, homeState) {
            final questions = homeState.questions;
            final questionTypes = homeState.questionTypes;
            final filter = homeBloc.filter(
                questionTypes: questionTypes, questions: questions);
            return SingleChildScrollView(
              child: Column(
                children: [
                  QuestionTypeTile(
                    name: 'Tất cả câu hỏi',
                    progress: homeBloc.progressLearned(
                      questions: questions,
                    ),
                    totalQuestions: questions.length,
                    onTap: () {
                      navigateToReviewQuestions(QuestionTypeEnum.all);
                    },
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: filter.length,
                    shrinkWrap: true,
                    itemBuilder: (context, i) {
                      return QuestionTypeTile(
                        name: filter[i].ZTYPE_NAME ?? '',
                        progress: homeBloc.progressLearned(
                          questions: questions,
                          typeID: filter[i].Z_PK ?? 0,
                        ),
                        totalQuestions: homeBloc.countQuestionsByType(
                          typeID: filter[i].Z_PK ?? 0,
                          questions: questions,
                        ),
                        onTap: () {
                          navigateToReviewQuestions(
                            QuestionTypeEnum.questionByType,
                            questionTypePK: filter[i].Z_PK,
                            questionTypeName: filter[i].ZTYPE_NAME,
                          );
                        },
                      );
                    },
                  ),
                  QuestionTypeTile(
                    name: '${homeBloc.countQuestionDie(
                      licenseName: homeState.licenseName ?? 'A1',
                      questions: questions,
                    )} câu điểm liệt',
                    progress: homeBloc.progressLearned(
                        questions: questions, isQuestionDie: true),
                    totalQuestions: homeBloc.countQuestionDie(
                      licenseName: homeState.licenseName ?? 'A1',
                      questions: questions,
                    ),
                    onTap: () {
                      navigateToReviewQuestions(QuestionTypeEnum.critical);
                    },
                  ),
                ],
              ),
            );
          },
        ));
  }
}

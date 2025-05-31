import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/enum/question_type_enum.dart';
import '../../../../data/models/question/question.dart';
import '../../home/blocs/home_bloc.dart';
import 'animated_clip_react.dart';
import 'question_detail_tile.dart';
import 'question_save_button.dart';

class QuestionDetail extends StatelessWidget {
  const QuestionDetail({
    super.key,
    required this.homeBloc,
    required this.question,
    required this.questionType,
    required this.index,
  });

  final HomeBloc homeBloc;
  final Question question;
  final QuestionTypeEnum questionType;
  final int index;

  void _toggleAnswer({
    required BuildContext context,
    required int indexSelected,
  }) {
    final learned = indexSelected;
    final wrong = indexSelected;
    final updatedQuestion = question.copyWith(
      ZLEARNED: learned,
      ZWRONG: wrong,
    );
    homeBloc.add(
      HomeEvent.updateQuestion(question: updatedQuestion),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDisable = questionType == QuestionTypeEnum.frequentMistakes;
    final stt =
        questionType == QuestionTypeEnum.test ? index + 1 : question.REZ1;
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    '$stt.${question.ZQUESTIONCONTENT}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                QuestionSaveButton(
                  question: question,
                  homeBloc: homeBloc,
                )
              ],
            ),
          ),
          const SizedBox(height: 16),
          Column(
            children: [
              if (question.ZOPTION1 != null) ...[
                QuestionDetailTile(
                  index: 1,
                  indexCorrect: question.ZCORRECT ?? 0,
                  content: question.ZOPTION1 ?? '',
                  indexLearned: question.ZLEARNED ?? 0,
                  onTap: isDisable
                      ? null
                      : () => _toggleAnswer(
                            context: context,
                            indexSelected: 1,
                          ),
                ),
                const Gap(8),
              ],
              if (question.ZOPTION2 != null) ...[
                QuestionDetailTile(
                  index: 2,
                  indexCorrect: question.ZCORRECT ?? 0,
                  indexLearned: question.ZLEARNED ?? 0,
                  content: question.ZOPTION2 ?? '',
                  onTap: isDisable
                      ? null
                      : () => _toggleAnswer(
                            context: context,
                            indexSelected: 2,
                          ),
                ),
                const Gap(8),
              ],
              if (question.ZOPTION3 != null) ...[
                QuestionDetailTile(
                  index: 3,
                  indexCorrect: question.ZCORRECT ?? 0,
                  indexLearned: question.ZLEARNED ?? 0,
                  content: question.ZOPTION3 ?? '',
                  onTap: isDisable
                      ? null
                      : () => _toggleAnswer(
                            context: context,
                            indexSelected: 3,
                          ),
                ),
                const Gap(8),
              ],
              if (question.ZOPTION4 != null) ...[
                QuestionDetailTile(
                  index: 4,
                  indexCorrect: question.ZCORRECT ?? 0,
                  indexLearned: question.ZLEARNED ?? 0,
                  content: question.ZOPTION4 ?? '',
                  onTap: isDisable
                      ? null
                      : () => _toggleAnswer(
                            context: context,
                            indexSelected: 4,
                          ),
                ),
                const Gap(8),
              ],
              const Gap(8),
              if (questionType == QuestionTypeEnum.test)
                AnimatedClipRect(
                  open: question.ZLEARNED == question.ZCORRECT ||
                      question.ZLEARNED != 0,
                  content: question.ZANSWERDESC ?? '',
                ),
            ],
          ),
          const Gap(8),
        ],
      ),
    );
  }
}

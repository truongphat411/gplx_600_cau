part of '../review_questions_screen.dart';

class _QuestionDetailScreen extends StatelessWidget {
  const _QuestionDetailScreen({
    required this.homeBloc,
    required this.question,
    required this.questionType,
    required this.index,
    super.key,
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
    final isFrequentMistakes =
        questionType == QuestionTypeEnum.frequentMistakes;
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
                    '${question.REZ1}.${question.ZQUESTIONCONTENT}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                _QuestionSaveButton(
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
                  onTap: isFrequentMistakes
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
                  onTap: isFrequentMistakes
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
                  onTap: isFrequentMistakes
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
                  onTap: isFrequentMistakes
                      ? null
                      : () => _toggleAnswer(
                            context: context,
                            indexSelected: 4,
                          ),
                ),
                const Gap(8),
              ],
              const Gap(8),
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

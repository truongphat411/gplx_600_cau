part of '../review_questions_screen.dart';

class _QuestionDetailScreen extends StatelessWidget {
  const _QuestionDetailScreen({
    required this.question,
    required this.index,
    super.key,
  });

  final ZQuestion question;
  final int index;

  void _toggleAnswer({
    required BuildContext context,
    required int indexSelected,
  }) {
    final learned = indexSelected;
    final wrong = question.ZANSWERS == indexSelected ? 0 : 1;
    final updatedQuestion = question.copyWith(
      ZLEARNED: learned,
      ZWRONG: wrong,
      indexAnswerSelected: indexSelected,
    );
    context.read<ReviewQuestionsBloc>().add(
          ReviewQuestionsEvent.updateQuestion(updatedQuestion),
        );
  }

  @override
  Widget build(BuildContext context) {
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
                    '${question.Z_PK}.${question.ZQUESTIONCONTENT}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                InkWell(
                  //onTap: () => _toggleAnswer(context),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: SvgPicture.asset(
                      'assets/images/ic_save.svg',
                      height: 32,
                      colorFilter: const ColorFilter.mode(
                        Colors.black,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Column(
            children: [
              if (question.ZOPTION1 != null) ...[
                QuestionDetailTile(
                  color: Colors.white,
                  index: 1,
                  indexCorrect: question.ZANSWERS ?? 0,
                  content: question.ZOPTION1 ?? '',
                  indexLearned: question.ZLEARNED ?? 0,
                  indexAnswerSelected: question.indexAnswerSelected,
                  onTap: () => _toggleAnswer(
                    context: context,
                    indexSelected: 1,
                  ),
                ),
                const SizedBox(height: 8),
              ],
              if (question.ZOPTION2 != null) ...[
                QuestionDetailTile(
                  color: Colors.white,
                  index: 2,
                  indexCorrect: question.ZANSWERS ?? 0,
                  indexLearned: question.ZLEARNED ?? 0,
                  content: question.ZOPTION2 ?? '',
                  indexAnswerSelected: question.indexAnswerSelected,
                  onTap: () => _toggleAnswer(
                    context: context,
                    indexSelected: 2,
                  ),
                ),
                const SizedBox(height: 8),
              ],
              if (question.ZOPTION3 != null) ...[
                QuestionDetailTile(
                  color: Colors.white,
                  index: 3,
                  indexCorrect: question.ZANSWERS ?? 0,
                  indexLearned: question.ZLEARNED ?? 0,
                  indexAnswerSelected: question.indexAnswerSelected,
                  content: question.ZOPTION3 ?? '',
                  onTap: () => _toggleAnswer(
                    context: context,
                    indexSelected: 3,
                  ),
                ),
                const SizedBox(height: 8),
              ],
              if (question.ZOPTION4 != null) ...[
                QuestionDetailTile(
                  color: Colors.white,
                  index: 4,
                  indexCorrect: question.ZANSWERS ?? 0,
                  indexLearned: question.ZLEARNED ?? 0,
                  indexAnswerSelected: question.indexAnswerSelected,
                  content: question.ZOPTION4 ?? '',
                  onTap: () => _toggleAnswer(
                    context: context,
                    indexSelected: 4,
                  ),
                ),
                const SizedBox(height: 8),
              ],
              AnimatedClipRect(
                open: question.indexAnswerSelected == question.ZANSWERS ||
                    question.ZLEARNED == question.ZANSWERS,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: QuestionDetailTile(
                      index: 5,
                      indexAnswerSelected: question.indexAnswerSelected,
                      indexLearned: question.ZLEARNED ?? 0,
                      indexCorrect: question.ZANSWERS ?? 0,
                      content: question.ZANSWERDESC ?? '',
                      color: Colors.amber.shade200),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

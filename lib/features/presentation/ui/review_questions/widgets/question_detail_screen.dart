part of '../review_questions_screen.dart';

class _QuestionDetailScreen extends StatelessWidget {
  const _QuestionDetailScreen({
    required this.question,
  });

  final ZQuestion question;

  void _toggleAnswer({
    required BuildContext context,
    required bool isCorrect,
    int? posAnswer,
  }) {
    final learned = posAnswer;
    final wrong = posAnswer;
    final updatedQuestion = question.copyWith(
      ZLEARNED: learned,
      ZWRONG: wrong,
    );
    context.read<QuestionDetailBloc>().add(
          QuestionDetailEvent.toggleAnswer(updatedQuestion, isCorrect),
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
          BlocBuilder<QuestionDetailBloc, QuestionDetailState>(
            builder: (context, state) {
              final isAnswerVisible = state.maybeWhen(
                answerVisibility: (isAnswerVisible) => isAnswerVisible,
                orElse: () => false,
              );
              return Column(
                children: [
                  if (question.ZOPTION1 != null) ...[
                    QuestionDetailTile(
                      color: Colors.white,
                      isLearned: question.ZLEARNED == question.ZANSWERS,
                      content: question.ZOPTION1 ?? '',
                      isWrong: question.ZWRONG != 0,
                      onTap: () => _toggleAnswer(
                        context: context,
                        isCorrect: question.ZANSWERS == 1,
                        posAnswer: 1,
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                  if (question.ZOPTION2 != null) ...[
                    QuestionDetailTile(
                      color: Colors.white,
                      isLearned: question.ZLEARNED == 2,
                      content: question.ZOPTION2 ?? '',
                      isWrong: question.ZWRONG != 0,
                      onTap: () => _toggleAnswer(
                        context: context,
                        isCorrect: question.ZANSWERS == 2,
                        posAnswer: 2,
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                  if (question.ZOPTION3 != null) ...[
                    QuestionDetailTile(
                      color: Colors.white,
                      isLearned: question.ZLEARNED == 3,
                      content: question.ZOPTION3 ?? '',
                      isWrong: question.ZWRONG != 0,
                      onTap: () => _toggleAnswer(
                        context: context,
                        isCorrect: question.ZANSWERS == 3,
                        posAnswer: 3,
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                  if (question.ZOPTION4 != null) ...[
                    QuestionDetailTile(
                      color: Colors.white,
                      isLearned: question.ZLEARNED == 4,
                      content: question.ZOPTION4 ?? '',
                      isWrong: question.ZWRONG != 0,
                      onTap: () => _toggleAnswer(
                        context: context,
                        isCorrect: question.ZANSWERS == 4,
                        posAnswer: 4,
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                  AnimatedClipRect(
                    open: isAnswerVisible ||
                        (question.ZLEARNED != 0 && question.ZWRONG == 0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: QuestionDetailTile(
                        content: question.ZANSWERDESC ?? '',
                        color: Colors.amber.shade200,
                        isShadow: isAnswerVisible,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

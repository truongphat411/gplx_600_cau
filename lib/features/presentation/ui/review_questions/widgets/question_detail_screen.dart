part of '../review_questions_screen.dart';

class _QuestionDetailScreen extends StatefulWidget {
  const _QuestionDetailScreen({
    required this.question,
  });

  final ZQuestion question;

  @override
  State<_QuestionDetailScreen> createState() => _QuestionDetailScreenState();
}

class _QuestionDetailScreenState extends State<_QuestionDetailScreen> {
  void _toggleAnswer({
    bool isCorrect = false,
  }) {
    context.read<ReviewQuestionsActionBloc>().add(
          ReviewQuestionsActionEvent.toggleAnswer(isCorrect),
        );
  }

  @override
  Widget build(BuildContext context) {
    final ques = widget.question;
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
                    '${ques.Z_PK}.${ques.ZQUESTIONCONTENT}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                InkWell(
                  onTap: _toggleAnswer,
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
          BlocBuilder<ReviewQuestionsActionBloc, ReviewQuestionsActionState>(
            builder: (context, state) {
              final isAnswerVisible = state.maybeWhen(
                answerVisibility: (isAnswerVisible) => isAnswerVisible,
                orElse: () => false,
              );
              return Column(
                children: [
                  if (ques.ZOPTION1 != null) ...[
                    QuestionDetailTile(
                      content: ques.ZOPTION1 ?? '',
                      onTap: () => _toggleAnswer(
                        isCorrect: ques.ZANSWERS == 1,
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                  if (ques.ZOPTION2 != null) ...[
                    QuestionDetailTile(
                      content: ques.ZOPTION2 ?? '',
                      onTap: () => _toggleAnswer(
                        isCorrect: ques.ZANSWERS == 2,
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                  if (ques.ZOPTION3 != null) ...[
                    QuestionDetailTile(
                      content: ques.ZOPTION3 ?? '',
                      onTap: () => _toggleAnswer(
                        isCorrect: ques.ZANSWERS == 3,
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                  if (ques.ZOPTION4 != null) ...[
                    QuestionDetailTile(
                      content: ques.ZOPTION4 ?? '',
                      onTap: () => _toggleAnswer(
                        isCorrect: ques.ZANSWERS == 4,
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                  const SizedBox(height: 8),
                  // AnimatedSize(
                  //   duration: const Duration(milliseconds: 300),
                  //   curve: isAnswerVisible ? Curves.easeInOut : Curves.bounceIn,
                  //   reverseDuration: const Duration(milliseconds: 300),
                  //   child: ConstrainedBox(
                  //     constraints: BoxConstraints(
                  //       maxHeight: isAnswerVisible ? double.infinity : 0,
                  //     ),
                  //     child: Padding(
                  //       padding: const EdgeInsets.symmetric(vertical: 8),
                  //       child: QuestionDetailTile(
                  //         key: _answerKey,
                  //         content: ques.ZANSWERDESC ?? '',
                  //         color: Colors.amber.shade200,
                  //         isShadow: isAnswerVisible ? true : false,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  AnimatedClipRect(
                    open: isAnswerVisible,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: QuestionDetailTile(
                        content: ques.ZANSWERDESC ?? '',
                        color: Colors.amber.shade200,
                        isShadow: isAnswerVisible ? true : false,
                      ),
                    ),
                  )
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

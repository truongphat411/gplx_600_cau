part of '../review_questions_screen.dart';

class QuestionControls extends StatelessWidget {
  const QuestionControls({
    super.key,
    required this.pageTotal,
    this.isQuestionDie = false,
  });

  final int pageTotal;
  final bool isQuestionDie;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReviewQuestionsActionBloc, ReviewQuestionsActionState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (state.currentPage > 0)
                InkWell(
                  onTap: () {
                    context.read<ReviewQuestionsActionBloc>().add(
                          const ReviewQuestionsActionEvent.previousPage(),
                        );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      Icons.skip_previous_rounded,
                      size: 40,
                    ),
                  ),
                )
              else
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 4,
                  ),
                  child: const Icon(
                    Icons.skip_previous_rounded,
                    color: Colors.transparent,
                    size: 40,
                  ),
                ),
              Text(
                '${state.currentPage + 1} / $pageTotal',
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                ),
              ),
              if (state.currentPage < pageTotal - 1)
                InkWell(
                  onTap: () {
                    context.read<ReviewQuestionsActionBloc>().add(
                          const ReviewQuestionsActionEvent.nextPage(),
                        );
                  },
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      Icons.skip_next_rounded,
                      size: 40,
                    ),
                  ),
                )
              else
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 4,
                  ),
                  child: const Icon(
                    Icons.skip_next_rounded,
                    color: Colors.transparent,
                    size: 40,
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}

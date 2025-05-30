part of '../review_questions_screen.dart';

class QuestionControls extends StatelessWidget {
  const QuestionControls({
    super.key,
    required this.questions,
    this.isQuestionDie = false,
    this.onTap,
  });

  final List<Question> questions;
  final bool isQuestionDie;
  final void Function()? onTap;

  Widget _buildControlBar(BuildContext context, int currentPage,
      {bool up = true}) {
    final appColors = Theme.of(context).appColors;
    final int prevQuestionNumber = (questions.isNotEmpty &&
            currentPage > 0 &&
            currentPage - 1 < questions.length)
        ? (questions[currentPage - 1].REZ1 ?? -1)
        : -1;
    final int nextQuestionNumber =
        (questions.isNotEmpty && currentPage + 1 < questions.length)
            ? (questions[currentPage + 1].REZ1 ?? -1)
            : -1;
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: appColors.backgroundPrimary,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        border: Border.symmetric(
          vertical: BorderSide(
            color: appColors.baseGray.withValues(alpha: 0.2),
            width: 1,
          ),
        ),
      ),
      child: Stack(
        children: [
          Center(
            child: InkWell(
              onTap: onTap,
              child: Icon(
                up
                    ? Icons.keyboard_double_arrow_up
                    : Icons.keyboard_double_arrow_down,
                size: 32,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: currentPage > 0
                    ? ControlButton(
                        icon: Icons.skip_previous_rounded,
                        label: prevQuestionNumber > 0
                            ? 'Câu $prevQuestionNumber'
                            : '',
                        textDirection: TextDirection.rtl,
                        onTap: () {
                          context.read<ReviewQuestionsActionBloc>().add(
                                const ReviewQuestionsActionEvent.previousPage(),
                              );
                        },
                      )
                    : const SizedBox.shrink(),
              ),
              Center(
                child: currentPage < questions.length - 1
                    ? ControlButton(
                        icon: Icons.skip_next_rounded,
                        label: nextQuestionNumber > 0
                            ? 'Câu $nextQuestionNumber'
                            : '',
                        onTap: () {
                          context.read<ReviewQuestionsActionBloc>().add(
                                const ReviewQuestionsActionEvent.nextPage(),
                              );
                        },
                      )
                    : const SizedBox.shrink(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).appColors;
    return BlocBuilder<ReviewQuestionsActionBloc, ReviewQuestionsActionState>(
      builder: (context, state) {
        final currentPage = state.maybeWhen(
          pageChanged: (page) => page,
          orElse: () => 0,
        );
        return LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxHeight <= 60) {
              return _buildControlBar(context, currentPage, up: true);
            }
            return SizedBox(
              height: constraints.maxHeight,
              child: Column(
                children: [
                  _buildControlBar(context, currentPage, up: false),
                  Expanded(
                    child: Container(
                      color: appColors.backgroundPrimary,
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 8),
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 8,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          childAspectRatio: 1,
                        ),
                        itemCount: questions.length,
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          final isSelected = state.maybeWhen(
                            pageChanged: (page) => page == index,
                            orElse: () => index == 0,
                          );
                          return GestureDetector(
                            onTap: () {
                              context.read<ReviewQuestionsActionBloc>().add(
                                    ReviewQuestionsActionEvent.JumpPage(index),
                                  );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: isSelected
                                    ? Colors.amber.shade200
                                    : appColors.baseGray.withValues(alpha: 0.2),
                                border: Border.all(
                                  color: appColors.baseWhite,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade200,
                                    spreadRadius: 4,
                                    blurRadius: 8,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                '${questions[index].REZ1}',
                                style: TextStyle(
                                  color: appColors.textPrimary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

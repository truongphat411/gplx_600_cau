part of '../review_questions_screen.dart';

class _QuestionScreen extends StatefulWidget {
  const _QuestionScreen({
    required this.questions,
    required this.questionType,
  });

  final List<Question> questions;
  final QuestionType questionType;

  @override
  State<_QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<_QuestionScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<ReviewQuestionsActionBloc, ReviewQuestionsActionState>(
      listener: (context, state) {
        final currentPage = state.maybeWhen(
          pageChanged: (page) => page,
          orElse: () => 0,
        );
        _pageController.animateToPage(
          currentPage,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
        );
      },
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          QuestionControls(
            pageTotal: widget.questions.length,
          ),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.questions.length,
              onPageChanged: (index) {
                context.read<ReviewQuestionsActionBloc>().add(
                      ReviewQuestionsActionEvent.JumpPage(index),
                    );
              },
              itemBuilder: (context, i) {
                return _QuestionDetailScreen(
                  key: ValueKey(widget.questions[i].Z_PK),
                  question: widget.questions[i],
                  index: i,
                  questionType: widget.questionType,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

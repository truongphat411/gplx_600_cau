part of '../review_questions_screen.dart';

class _QuestionScreen extends StatefulWidget {
  const _QuestionScreen({
    required this.questions,
    this.isQuestionDie = false,
  });

  final List<ZQuestion> questions;
  final bool isQuestionDie;

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
              itemBuilder: (_, i) {
                return _QuestionDetailScreen(
                  question: widget.questions[i],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

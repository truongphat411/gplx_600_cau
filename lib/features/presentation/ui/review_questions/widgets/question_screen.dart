part of '../review_questions_screen.dart';

class _QuestionScreen extends StatefulWidget {
  const _QuestionScreen({
    required this.homeBloc,
    required this.questions,
    required this.questionType,
  });

  final HomeBloc homeBloc;
  final List<Question> questions;
  final QuestionTypeEnum questionType;

  @override
  State<_QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<_QuestionScreen> {
  final PageController _pageController = PageController();
  final ValueNotifier<bool> isExpanded = ValueNotifier(false);

  @override
  void dispose() {
    isExpanded.dispose();
    _pageController.dispose();
    super.dispose();
  }

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
      child: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: widget.questions.length,
            // onPageChanged: (index) {
            //   context.read<ReviewQuestionsActionBloc>().add(
            //         ReviewQuestionsActionEvent.JumpPage(index),
            //       );
            // },
            itemBuilder: (context, i) => _QuestionDetailScreen(
              key: ValueKey(widget.questions[i].Z_PK),
              question: widget.questions[i],
              index: i,
              questionType: widget.questionType,
              homeBloc: widget.homeBloc,
            ),
          ),
          ValueListenableBuilder<bool>(
            valueListenable: isExpanded,
            builder: (context, value, child) {
              return AnimatedPositioned(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
                bottom: 0,
                left: 0,
                right: 0,
                height: value ? 260 : 60,
                child: QuestionControls(
                  questions: widget.questions,
                  onTap: () => isExpanded.value = !isExpanded.value,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

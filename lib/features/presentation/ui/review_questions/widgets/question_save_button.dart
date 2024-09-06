part of '../review_questions_screen.dart';

class _QuestionSaveButton extends StatefulWidget {
  const _QuestionSaveButton({
    Key? key,
    required this.question,
  }) : super(key: key);

  final ZQuestion question;

  @override
  State<_QuestionSaveButton> createState() => _QuestionSaveButtonState();
}

class _QuestionSaveButtonState extends State<_QuestionSaveButton> {
  void _toggleIcon(BuildContext context) {
    final isMarked = widget.question.ZMARKED == 1;
    final updatedQuestion = widget.question.copyWith(
      ZMARKED: isMarked ? 0 : 1,
      isMarked: !isMarked,
    );

    context.read<ReviewQuestionsBloc>().add(
          ReviewQuestionsEvent.updateQuestion(updatedQuestion),
        );
  }

  @override
  Widget build(BuildContext context) {
    final isMarked = widget.question.ZMARKED == 1 || widget.question.isMarked;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: InkWell(
        onTap: () => _toggleIcon(context),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          switchInCurve: Curves.easeIn,
          switchOutCurve: Curves.easeOut,
          transitionBuilder: (child, animation) => ScaleTransition(
            scale: animation,
            child: child,
          ),
          child: SvgPicture.asset(
            isMarked ? Assets.images.icSaveCheck : Assets.images.icSaveUncheck,
            key: ValueKey<bool>(isMarked),
            height: 28,
          ),
        ),
      ),
    );
  }
}

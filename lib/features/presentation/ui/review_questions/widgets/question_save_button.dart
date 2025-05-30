part of '../review_questions_screen.dart';

class _QuestionSaveButton extends StatefulWidget {
  const _QuestionSaveButton({
    Key? key,
    required this.question,
    required this.homeBloc,
  }) : super(key: key);

  final Question question;
  final HomeBloc homeBloc;

  @override
  State<_QuestionSaveButton> createState() => _QuestionSaveButtonState();
}

class _QuestionSaveButtonState extends State<_QuestionSaveButton> {
  void _toggleIcon(BuildContext context) {
    final isMarked = widget.question.ZMARKED == 1;
    final updatedQuestion = widget.question.copyWith(
      ZMARKED: isMarked ? 0 : 1,
    );

    widget.homeBloc.add(
      HomeEvent.updateQuestion(question: updatedQuestion),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: widget.homeBloc,
      builder: (context, state) {
        final isMarked = widget.question.ZMARKED == 1;
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
                isMarked
                    ? Assets.images.icSaveCheck
                    : Assets.images.icSaveUncheck,
                key: ValueKey<bool>(isMarked),
                height: 28,
              ),
            ),
          ),
        );
      },
    );
  }
}

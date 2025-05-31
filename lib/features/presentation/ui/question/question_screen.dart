import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/enum/question_type_enum.dart';
import '../../../data/models/models.dart';
import '../home/blocs/home_bloc.dart';
import 'bloc/questions_action_bloc/questions_action_bloc.dart';
import 'widgets/question_controls.dart';
import 'widgets/question_detail.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({
    super.key,
    required this.homeBloc,
    required this.questions,
    required this.questionType,
  });

  final HomeBloc homeBloc;
  final List<Question> questions;
  final QuestionTypeEnum questionType;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  final PageController _pageController = PageController();
  final ValueNotifier<bool> isExpanded = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    isExpanded.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<QuestionsActionBloc, QuestionsActionState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          pageChanged: (currentPage) {
            _pageController.jumpToPage(currentPage);
          },
        );
      },
      child: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: widget.questions.length,
            onPageChanged: (index) {
              context.read<QuestionsActionBloc>().add(
                    QuestionsActionEvent.JumpPage(index),
                  );
            },
            itemBuilder: (context, i) => QuestionDetail(
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
                  questionType: widget.questionType,
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

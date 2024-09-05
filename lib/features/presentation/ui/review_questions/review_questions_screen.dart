import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gplx_600_cau/core/enum/question_type.dart';
import 'package:gplx_600_cau/core/extension/theme_data_extension.dart';
import 'package:gplx_600_cau/features/data/models/zquestion/zquestion.dart';
import 'package:gplx_600_cau/features/presentation/ui/review_questions/blocs/review_questions_action_bloc/review_questions_action_bloc.dart';
import 'package:gplx_600_cau/features/presentation/ui/review_questions/blocs/review_questions_bloc/review_questions_bloc.dart';
import 'package:gplx_600_cau/features/presentation/components/common_app_bar.dart';

part 'widgets/question_screen.dart';
part 'widgets/question_detail_screen.dart';
part 'widgets/question_detail_tile.dart';
part 'widgets/question_controls.dart';
part 'widgets/animated_clip_react.dart';

class ReviewQuestionsScreen extends StatefulWidget {
  const ReviewQuestionsScreen({
    super.key,
    this.questionType = QuestionType.all,
  });

  final QuestionType questionType;

  @override
  State<ReviewQuestionsScreen> createState() => _ReviewQuestionsScreenState();
}

class _ReviewQuestionsScreenState extends State<ReviewQuestionsScreen> {
  @override
  void initState() {
    super.initState();
    _loadQuestionsBasedOnType(widget.questionType);
  }

  void _loadQuestionsBasedOnType(QuestionType type) {
    switch (type) {
      case QuestionType.all:
        context.read<ReviewQuestionsBloc>().add(
              const ReviewQuestionsEvent.getAllQuestions(),
            );
        break;
      case QuestionType.critical:
        context.read<ReviewQuestionsBloc>().add(
              const ReviewQuestionsEvent.getTop60CriticalQuestions(),
            );
        break;
      case QuestionType.frequentMistakes:
        context.read<ReviewQuestionsBloc>().add(
              const ReviewQuestionsEvent.getFrequentMistakes(),
            );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).appColors;
    return Scaffold(
      appBar: CommonAppBar(
        title: Text(
          'Ôn tập câu hỏi',
          style: TextStyle(
            color: appColors.textPrimary,
            fontWeight: FontWeight.w700,
          ),
        ),
        elevation: 1,
      ),
      body: BlocBuilder<ReviewQuestionsBloc, ReviewQuestionsState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => Container(),
            loading: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            data: (value) {
              final questions = value;
              return _QuestionScreen(questions: questions);
            },
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:gplx_600_cau/core/enum/question_type_enum.dart';
import 'package:gplx_600_cau/core/extension/theme_data_extension.dart';
import 'package:gplx_600_cau/features/data/models/question/question.dart';
import 'package:gplx_600_cau/features/presentation/ui/home/blocs/home_bloc.dart';
import 'package:gplx_600_cau/features/presentation/ui/review_questions/blocs/review_questions_action_bloc/review_questions_action_bloc.dart';
import 'package:gplx_600_cau/features/presentation/components/common_app_bar.dart';
import 'package:gplx_600_cau/gen/assets.gen.dart';

import 'widgets/control_button.dart';

part 'widgets/question_screen.dart';
part 'widgets/question_detail_screen.dart';
part 'widgets/question_detail_tile.dart';
part 'widgets/question_controls.dart';
part 'widgets/animated_clip_react.dart';
part 'widgets/question_save_button.dart';

class ReviewQuestionsScreen extends StatefulWidget {
  const ReviewQuestionsScreen({
    super.key,
    required this.homeBloc,
    this.questionType = QuestionTypeEnum.all,
    this.questionTypePK,
    this.questionTypeName,
  });

  final QuestionTypeEnum questionType;
  final int? questionTypePK;
  final String? questionTypeName;
  final HomeBloc homeBloc;

  @override
  State<ReviewQuestionsScreen> createState() => _ReviewQuestionsScreenState();
}

class _ReviewQuestionsScreenState extends State<ReviewQuestionsScreen> {
  late final String title;

  @override
  void initState() {
    super.initState();
    title = _getTitle(widget.questionType);
  }

  String _getTitle(QuestionTypeEnum type) {
    switch (type) {
      case QuestionTypeEnum.critical:
        return widget.questionTypeName ?? '';
      case QuestionTypeEnum.frequentMistakes:
        return 'Câu hay sai';
      case QuestionTypeEnum.questionByType:
        return widget.questionTypeName ?? '';
      case QuestionTypeEnum.saved:
        return 'Câu đã lưu';
      default:
        return 'Tất cả câu hỏi';
    }
  }

  List<Question> getQuestions(QuestionTypeEnum type, List<Question> questions) {
    switch (type) {
      case QuestionTypeEnum.all:
        return questions;
      case QuestionTypeEnum.critical:
        return widget.homeBloc.getTop60CriticalQuestions(quesitons: questions);
      case QuestionTypeEnum.frequentMistakes:
        return widget.homeBloc.getFrequentMistakes(questions: questions);
      case QuestionTypeEnum.questionByType:
        return widget.homeBloc.getQuestionsByType(
          questionType: widget.questionTypePK ?? 1,
          quesitons: questions,
        );
      case QuestionTypeEnum.saved:
        return widget.homeBloc.getSavedQuestions(
          questions: questions,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).appColors;
    return Scaffold(
      appBar: CommonAppBar(
        title: Text(
          title,
          style: TextStyle(
            color: appColors.textPrimary,
            fontWeight: FontWeight.w700,
          ),
        ),
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(true);
          },
        ),
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
          bloc: widget.homeBloc,
          builder: (context, state) {
            final questions = getQuestions(
              widget.questionType,
              state.questions,
            );
            return _buildQuestionList(questions);
          }),
    );
  }

  Widget _buildQuestionList(List<Question> questions) {
    if (questions.isEmpty &&
        widget.questionType == QuestionTypeEnum.frequentMistakes) {
      return const _EmptyScreen(
        description: 'Không có câu trả lời nào sai cả!!!',
      );
    } else if (questions.isEmpty &&
        widget.questionType == QuestionTypeEnum.saved) {
      return const _EmptyScreen(
        description: 'Bạn chưa lưu câu hỏi nào!!!',
      );
    }
    return _QuestionScreen(
      questions: questions,
      questionType: widget.questionType,
      homeBloc: widget.homeBloc,
    );
  }
}

// class _LoadingIndicator extends StatelessWidget {
//   const _LoadingIndicator();

//   @override
//   Widget build(BuildContext context) {
//     return const Center(child: CircularProgressIndicator());
//   }
// }

class _EmptyScreen extends StatelessWidget {
  const _EmptyScreen({
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(Assets.images.imgWarning.path),
        ),
        const Gap(16),
        Text(
          // 'Không có câu trả lời nào sai cả!!!',
          description,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:gplx_600_cau/core/enum/question_type.dart';
import 'package:gplx_600_cau/core/extension/theme_data_extension.dart';
import 'package:gplx_600_cau/features/data/models/question/question.dart';
import 'package:gplx_600_cau/features/presentation/ui/review_questions/blocs/review_questions_action_bloc/review_questions_action_bloc.dart';
import 'package:gplx_600_cau/features/presentation/ui/review_questions/blocs/review_questions_bloc/review_questions_bloc.dart';
import 'package:gplx_600_cau/features/presentation/components/common_app_bar.dart';
import 'package:gplx_600_cau/gen/assets.gen.dart';

part 'widgets/question_screen.dart';
part 'widgets/question_detail_screen.dart';
part 'widgets/question_detail_tile.dart';
part 'widgets/question_controls.dart';
part 'widgets/animated_clip_react.dart';
part 'widgets/question_save_button.dart';

class ReviewQuestionsScreen extends StatefulWidget {
  const ReviewQuestionsScreen(
      {super.key,
      this.questionType = QuestionType.all,
      this.questionTypePK,
      this.questionTypeName});

  final QuestionType questionType;
  final int? questionTypePK;
  final String? questionTypeName;

  @override
  State<ReviewQuestionsScreen> createState() => _ReviewQuestionsScreenState();
}

class _ReviewQuestionsScreenState extends State<ReviewQuestionsScreen> {
  late final String title;

  @override
  void initState() {
    super.initState();
    title = _getTitle(widget.questionType);
    _loadQuestions(widget.questionType);
  }

  String _getTitle(QuestionType type) {
    switch (type) {
      case QuestionType.critical:
        return '60 câu điểm liệt';
      case QuestionType.frequentMistakes:
        return 'Câu hay sai';
      case QuestionType.questionByType:
        return widget.questionTypeName ?? '';
      case QuestionType.saved:
        return 'Câu đã lưu';
      default:
        return 'Tất cả câu hỏi';
    }
  }

  void _loadQuestions(QuestionType type) {
    final event = switch (type) {
      QuestionType.all => const ReviewQuestionsEvent.getAllQuestions(),
      QuestionType.critical =>
        const ReviewQuestionsEvent.getTop60CriticalQuestions(),
      QuestionType.frequentMistakes =>
        const ReviewQuestionsEvent.getFrequentMistakes(),
      QuestionType.questionByType => ReviewQuestionsEvent.getQuestionsByType(
          questionType: widget.questionTypePK ?? 1,
        ),
      QuestionType.saved => const ReviewQuestionsEvent.getSavedQuestions()
    };
    context.read<ReviewQuestionsBloc>().add(event);
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
      body: BlocBuilder<ReviewQuestionsBloc, ReviewQuestionsState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => Container(),
            loading: () => const _LoadingIndicator(),
            data: (questions) => _buildQuestionList(questions),
          );
        },
      ),
    );
  }

  Widget _buildQuestionList(List<Question> questions) {
    if (questions.isEmpty &&
        widget.questionType == QuestionType.frequentMistakes) {
      return const _EmptyFrequentMistakes();
    }
    return _QuestionScreen(
      questions: questions,
      questionType: widget.questionType,
    );
  }
}

class _LoadingIndicator extends StatelessWidget {
  const _LoadingIndicator();

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class _EmptyFrequentMistakes extends StatelessWidget {
  const _EmptyFrequentMistakes();

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
        const Text(
          'Không có câu trả lời nào sai cả!!!',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

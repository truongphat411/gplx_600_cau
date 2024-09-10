import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:gplx_600_cau/core/enum/question_type.dart';
import 'package:gplx_600_cau/core/extension/theme_data_extension.dart';
import 'package:gplx_600_cau/core/routes/router.dart';
import 'package:gplx_600_cau/features/data/models/znumberquestionpertype/znumberquestionpertype.dart';
import 'package:gplx_600_cau/features/presentation/ui/home/blocs/home_bloc.dart';

class QuestionTypeTile extends StatefulWidget {
  const QuestionTypeTile({
    super.key,
    required this.questionPerType,
  });

  final ZNumberQuestionPerType questionPerType;

  @override
  _QuestionTypeTileState createState() => _QuestionTypeTileState();
}

class _QuestionTypeTileState extends State<QuestionTypeTile> {
  void _navigateToReviewQuestions(
    QuestionType questionType, {
    int? questionTypePK,
    String? questionTypeName,
  }) {
    ReviewQuestionsRoute(
      questionType: questionType,
      questionTypePK: questionTypePK,
      questionTypeName: questionTypeName,
    ).push(context).then((_) {
      context.read<HomeBloc>().add(const HomeEvent.getQuestionStatistics());
    });
  }

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).appColors;
    final int progress = widget.questionPerType.TOTALQUESTIONSLEARNED ?? 0;
    final int totalQuestions = widget.questionPerType.TOTALQUESTIONS ?? 0;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
        color: appColors.baseWhite,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            spreadRadius: 4,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            switch (widget.questionPerType.ZTYPE_NAME) {
              case 'Tất cả câu hỏi':
                _navigateToReviewQuestions(QuestionType.all);
                break;
              case '60 câu điểm liệt':
                _navigateToReviewQuestions(QuestionType.critical);
                break;
              default:
                _navigateToReviewQuestions(
                  QuestionType.questionByType,
                  questionTypePK: widget.questionPerType.QUESTION_TYPE_PK,
                  questionTypeName: widget.questionPerType.ZTYPE_NAME,
                );
                break;
            }
          },
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.questionPerType.ZTYPE_NAME ?? '',
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
                const Gap(6),
                LinearProgressIndicator(
                  value: totalQuestions > 0 ? progress / totalQuestions : 0,
                  borderRadius: BorderRadius.circular(100),
                  backgroundColor: Colors.grey.shade200,
                  color: Colors.redAccent,
                  minHeight: 8,
                ),
                const Gap(6),
                Text(
                  '$progress/$totalQuestions',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

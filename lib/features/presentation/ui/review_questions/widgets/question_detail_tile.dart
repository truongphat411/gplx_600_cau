part of '../review_questions_screen.dart';

class QuestionDetailTile extends StatelessWidget {
  const QuestionDetailTile({
    super.key,
    required this.content,
    this.isCorrect = false,
    this.onTap,
    required this.color,
    this.isShadow = true,
    this.isLearned = false,
    this.isWrong = false,
  });

  final String content;
  final Color color;
  final VoidCallback? onTap;
  final bool isCorrect;
  final bool isShadow;
  final bool isLearned;
  final bool isWrong;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: isWrong && isLearned
            ? Colors.green.shade100
            : !isWrong && !isLearned
                ? Colors.red.shade100
                : color,
        border: Border.all(
          color: isWrong && isLearned
              ? Colors.green
              : !isWrong && !isLearned
                  ? Colors.red
                  : color,
        ),
        borderRadius: BorderRadius.circular(12),
        boxShadow: isShadow
            ? [
                BoxShadow(
                  color: Colors.grey.shade200,
                  spreadRadius: 4,
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ]
            : null,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            width: double.infinity,
            child: Text(
              content,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: isWrong && isLearned
                    ? Colors.green
                    : !isWrong && !isLearned
                        ? Colors.red
                        : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

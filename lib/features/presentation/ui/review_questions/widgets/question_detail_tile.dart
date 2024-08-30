part of '../review_questions_screen.dart';

class QuestionDetailTile extends StatelessWidget {
  const QuestionDetailTile({
    super.key,
    required this.content,
    this.isCorrect = false,
    this.onTap,
    this.color,
    this.isShadow = true,
  });

  final String content;
  final Color? color;
  final VoidCallback? onTap;
  final bool isCorrect;
  final bool isShadow;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          width: double.infinity,
          decoration: BoxDecoration(
            color: color ?? Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: isShadow
                ? [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 4,
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ]
                : null,
          ),
          child: Text(
            content,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

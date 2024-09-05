part of '../review_questions_screen.dart';

class QuestionDetailTile extends StatelessWidget {
  const QuestionDetailTile({
    super.key,
    required this.content,
    required this.indexCorrect,
    required this.color,
    required this.index,
    required this.indexAnswerSelected,
    required this.indexLearned,
    this.onTap,
  });

  final String content;
  final Color color;
  final int indexCorrect;
  final int index;
  final int indexAnswerSelected;
  final int indexLearned;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    Color? determineBorderColor(int selectedIndex) {
      if (selectedIndex == 0 && indexLearned == 0) return null;
      if (selectedIndex == indexCorrect || indexLearned == indexCorrect) {
        return index == selectedIndex || index == indexLearned
            ? Colors.green
            : null;
      }
      return index == selectedIndex || index == indexLearned
          ? Colors.red
          : index == indexCorrect
              ? Colors.green
              : null;
    }

    Color? determineBackgroundColor(int selectedIndex) {
      if (selectedIndex == 0 && indexLearned == 0) return null;
      if (selectedIndex == indexCorrect || indexLearned == indexCorrect) {
        return index == selectedIndex || index == indexLearned
            ? Colors.green.shade100
            : null;
      }

      return index == selectedIndex || index == indexLearned
          ? Colors.red.shade100
          : index == indexCorrect
              ? Colors.green.shade100
              : null;
    }

    final selectedIndex = indexAnswerSelected;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: determineBackgroundColor(selectedIndex) ?? Colors.white,
        border: Border.all(
            color: determineBorderColor(selectedIndex) ?? Colors.white),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 4,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
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
                color: determineBorderColor(selectedIndex) ?? Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

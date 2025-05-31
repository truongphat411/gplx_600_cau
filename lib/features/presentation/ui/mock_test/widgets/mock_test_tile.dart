part of '../mock_test_screen.dart';

class _MockTestTile extends StatelessWidget {
  const _MockTestTile({
    required this.index,
    required this.test,
    required this.numberOfQuestion,
    this.onTap,
  });

  final int index;
  final Test test;
  final int numberOfQuestion;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).appColors;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: appColors.baseLightGrayPale,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: [
              Text(
                'Đề số ${index + 1}',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${test.TEST_SCORE} ',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '/ $numberOfQuestion',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

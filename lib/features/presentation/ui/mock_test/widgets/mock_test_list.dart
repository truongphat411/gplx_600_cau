part of '../mock_test_screen.dart';

class _MockTestList extends StatelessWidget {
  const _MockTestList({
    required this.tests,
    required this.numberOfQuestion,
    required this.homeBloc,
  });

  final List<List<Test>> tests;
  final int numberOfQuestion;
  final HomeBloc homeBloc;

  @override
  Widget build(BuildContext context) {
    int index = 0;
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: tests.length,
      itemBuilder: (_, i) {
        final testItems = tests[i];
        return IntrinsicHeight(
          child: Row(
            children: [
              for (final item in testItems)
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 4,
                    ),
                    child: GestureDetector(
                      child: _MockTestTile(
                        test: item,
                        index: index++,
                        numberOfQuestion: numberOfQuestion,
                        onTap: () {
                          TestQuestRoute(
                            $extra: homeBloc,
                            testID: item.IDTEST ?? 0,
                          ).push(context);
                        },
                      ),
                    ),
                  ),
                ),
              if (tests.length == 1) const Spacer(),
            ],
          ),
        );
      },
    );
  }
}

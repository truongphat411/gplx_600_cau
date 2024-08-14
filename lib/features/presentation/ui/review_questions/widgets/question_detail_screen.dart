part of '../review_questions_screen.dart';

class _QuestionDetailScreen extends StatefulWidget {
  const _QuestionDetailScreen({
    required this.question,
  });

  final ZQuestion question;

  @override
  State<_QuestionDetailScreen> createState() => _QuestionDetailScreenState();
}

class _QuestionDetailScreenState extends State<_QuestionDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final ques = widget.question;
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    '${ques.ZQUESTIONCONTENT}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: SvgPicture.asset(
                      'assets/images/ic_save.svg',
                      height: 32,
                      colorFilter: const ColorFilter.mode(
                        Colors.black,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          if (ques.ZOPTION1 != null) ...[
            QuestionDetailTile(
              content: ques.ZOPTION1 ?? '',
            ),
            const SizedBox(
              height: 8,
            ),
          ],
          if (ques.ZOPTION2 != null) ...[
            QuestionDetailTile(
              content: ques.ZOPTION2 ?? '',
            ),
            const SizedBox(
              height: 8,
            ),
          ],
          if (ques.ZOPTION3 != null) ...[
            QuestionDetailTile(
              content: ques.ZOPTION3 ?? '',
            ),
            const SizedBox(
              height: 8,
            ),
          ],
          if (ques.ZOPTION4 != null) ...[
            QuestionDetailTile(
              content: ques.ZOPTION4 ?? '',
            ),
            const SizedBox(
              height: 8,
            ),
          ],
          const SizedBox(
            height: 8,
          ),
          QuestionDetailTile(
            content: ques.ZANSWERDESC ?? '',
            color: Colors.amber.shade200,
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}

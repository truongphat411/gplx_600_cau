import 'package:flutter/material.dart';
import 'package:gplx_600_cau/core/extension/theme_data_extension.dart';
import 'package:gplx_600_cau/features/data/models/znumberquestionpertype/znumberquestionpertype.dart';

class QuestionTypeList extends StatelessWidget {
  const QuestionTypeList({
    super.key,
    required this.questionPerType,
  });

  final List<ZNumberQuestionPerType> questionPerType;

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).appColors;
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: questionPerType.length,
      itemBuilder: (context, i) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: appColors.baseWhite,
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
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
              onTap: () {},
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                          height: 100,
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                questionPerType[i].ZTYPE_NAME ?? '',
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 17),
                              ),
                              Text(
                                '${questionPerType[i].TOTALQUESTIONS} câu hỏi',
                                style: const TextStyle(
                                    fontSize: 12, color: Colors.black54),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Icon(
                          Icons.check_circle,
                          color: appColors.baseLightGreen,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gplx_600_cau/core/extension/theme_data_extension.dart';

class QuestionTypeTile extends StatefulWidget {
  const QuestionTypeTile({
    super.key,
    required this.name,
    required this.totalQuestions,
    required this.progress,
    this.onTap,
  });

  final String name;
  final void Function()? onTap;
  final int totalQuestions;
  final int progress;

  @override
  _QuestionTypeTileState createState() => _QuestionTypeTileState();
}

class _QuestionTypeTileState extends State<QuestionTypeTile> {

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).appColors;

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
          onTap: widget.onTap,
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
                const Gap(6),
                LinearProgressIndicator(
                  value: widget.totalQuestions > 0
                      ? widget.progress / widget.totalQuestions
                      : 0,
                  borderRadius: BorderRadius.circular(100),
                  backgroundColor: Colors.grey.shade200,
                  color: Colors.redAccent,
                  minHeight: 8,
                ),
                const Gap(6),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '${widget.progress}/${widget.totalQuestions}',
                    style: TextStyle(
                      fontSize: 14,
                      color: appColors.textPrimary,
                    ),
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

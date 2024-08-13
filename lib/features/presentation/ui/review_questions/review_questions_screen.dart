import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gplx_600_cau/core/extension/theme_data_extension.dart';
import 'package:gplx_600_cau/di.dart';
import 'package:gplx_600_cau/features/presentation/blocs/review_questions/review_questions_bloc.dart';
import 'package:gplx_600_cau/features/presentation/components/common_app_bar.dart';

class ReviewQuestionsScreen extends StatelessWidget {
  const ReviewQuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).appColors;
    return Scaffold(
      appBar: CommonAppBar(
        title: Text(
          'Ôn tập câu hỏi',
          style: TextStyle(
            color: appColors.textPrimary,
            fontWeight: FontWeight.w700,
          ),
        ),
        elevation: 1,
      ),
      body: BlocProvider(
        create: ((context) => getIt<ReviewQuestionsBloc>()..add(
          const ReviewQuestionsEvent.getAllQuestions(),
        )),
        child: BlocBuilder<ReviewQuestionsBloc, ReviewQuestionsState>(
          builder: (context, state) {
            return state.maybeMap(
              orElse: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              loading: (e) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              data: (value) {
                final questions = value.zQuestions;
                return ListView.builder(
                  itemCount: questions.length,
                  itemBuilder: (_, i) {
                    return Container(
                      padding: const EdgeInsets.all(4),
                      child: Text(questions[i].ZQUESTIONCONTENT ?? ''),
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}

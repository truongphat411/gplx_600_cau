import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:gplx_600_cau/core/extension/theme_data_extension.dart';
import 'package:gplx_600_cau/core/gen/assets.gen.dart';
import 'package:gplx_600_cau/core/routes/router.dart';
import 'package:gplx_600_cau/features/data/data_sources/local/shared_preferences_storage.dart';
import 'package:gplx_600_cau/features/presentation/components/banner_ads_widget.dart';
import 'package:gplx_600_cau/features/presentation/components/common_app_bar.dart';
import 'package:gplx_600_cau/features/presentation/ui/home/blocs/home_bloc.dart';
import 'package:gplx_600_cau/features/presentation/ui/home/models/item_home.dart';
import 'package:gplx_600_cau/features/presentation/ui/home/widgets/question_type_list.dart';

part 'widgets/home_menu_items.dart';
part 'widgets/home_menu_item_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String title = '600 câu hỏi GPLX';

  @override
  void initState() {
    super.initState();
    final licenseName = SharedPreferencesStorage.getLicenseSelected();
    _setTitle(licenseName);
    context.read<HomeBloc>().add(
          const HomeEvent.getQuestionStatistics(),
        );
  }

  void _setTitle(String licenseName) {
    setState(() {
      title = 'Giấy Phép Lái Xe -  Hạng $licenseName';
    });
  }

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).appColors;
    final mockDataHomeMenuItems = [
      ItemHome(
        title: 'Thi thử',
        icon: Assets.images.icRandomQuiz,
        color: Colors.amber,
        navigationPath: '/mock-test',
      ),
      ItemHome(
        title: 'Ôn tập câu hỏi',
        icon: Assets.images.icExamBySet,
        color: Colors.green,
        navigationPath: '/review-questions/all',
      ),
      ItemHome(
        title: 'Câu hay sai',
        icon: Assets.images.icFrequentMistakes,
        color: Colors.blue,
        navigationPath: '/review-questions/frequent-mistakes',
      ),
      ItemHome(
        title: 'Mẹo thi kết quả cao',
        icon: Assets.images.icMemoryTips,
        color: Colors.purple,
        navigationPath: '/memory-tips',
      ),
      ItemHome(
        title: 'Câu đã lưu',
        icon: Assets.images.icQuizSave,
        color: Colors.grey,
        navigationPath: '/review-questions/saved',
      ),
      ItemHome(
        title: 'Ôn tập biển báo',
        icon: Assets.images.icTrafficSigns,
        color: Colors.teal,
        navigationPath: '/traffic-signs',
      ),
      ItemHome(
        title: '60 câu điểm liệt',
        icon: Assets.images.icTrafficSigns,
        color: Colors.deepOrange,
        navigationPath: '/review-questions/critical',
      ),
      ItemHome(
        title: '50 câu hay sai',
        icon: Assets.images.icTrafficSigns,
        color: Colors.pinkAccent,
        navigationPath: '/traffic-signs',
      )
    ];
    return Scaffold(
      appBar: CommonAppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                LicenseRoute().push(context).then((value) {
                  if (value is String) {
                    _setTitle(value);
                  }
                });
              },
            );
          },
        ),
        title: Text(
          title,
          style: TextStyle(
            color: appColors.textPrimary,
            fontWeight: FontWeight.w700,
          ),
        ),
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            children: [
              _HomeMenuItems(
                list: mockDataHomeMenuItems.slices(2).toList(),
              ),
              BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => Container(),
                    loading: () => Container(),
                    data: (questionPerType) => QuestionTypeList(
                      questionPerType: questionPerType,
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BannerAdsWidget(
        adSize: AdSize(
          width: 320,
          height: 50,
        ),
      ),
    );
  }
}

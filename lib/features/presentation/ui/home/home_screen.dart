import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:gplx_600_cau/core/enum/question_type_enum.dart';
import 'package:gplx_600_cau/core/extension/theme_data_extension.dart';
import 'package:gplx_600_cau/core/gen/assets.gen.dart';
import 'package:gplx_600_cau/core/routes/router.dart';
import 'package:gplx_600_cau/features/presentation/components/banner_ads_widget.dart';
import 'package:gplx_600_cau/features/presentation/components/common_app_bar.dart';
import 'package:gplx_600_cau/features/presentation/ui/home/blocs/home_bloc.dart';
import 'package:gplx_600_cau/features/presentation/ui/home/models/item_home.dart';

import '../../../../core/utils/utils.dart';

part 'widgets/home_menu_items.dart';
part 'widgets/home_menu_item_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String title = '600 câu hỏi GPLX';
  HomeBloc get homeBloc => context.read<HomeBloc>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).appColors;
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        state.mapOrNull(
          loading: (value) => LoadingOverlayController.instance.show(context),
          failure: (error) {
            LoadingOverlayController.instance.hide();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(error.toString()),
              ),
            );
          },
          data: (_) {
            LoadingOverlayController().hide();
          },
        );
      },
      builder: (context, state) {
        final mockDataHomeMenuItems = [
          ItemHome(
            title: 'Thi thử',
            icon: Assets.images.icRandomQuiz,
            color: Colors.amber,
            onTap: () => MockTestRoute($extra: homeBloc).push(context),
          ),
          ItemHome(
            title: 'Ôn tập câu hỏi',
            icon: Assets.images.icExamBySet,
            color: Colors.green,
            onTap: () => QuestionTypesRoute($extra: homeBloc).push(context),
          ),
          ItemHome(
            title: 'Câu hay sai',
            icon: Assets.images.icFrequentMistakes,
            color: Colors.blue,
            onTap: () => ReviewQuestionsRoute(
              questionType: QuestionTypeEnum.frequentMistakes,
              $extra: homeBloc,
            ).push(context),
          ),
          ItemHome(
            title: 'Câu đã lưu',
            icon: Assets.images.icQuizSave,
            color: Colors.grey,
            onTap: () => ReviewQuestionsRoute(
              questionType: QuestionTypeEnum.saved,
              $extra: homeBloc,
            ).push(context),
          ),
        ];
        return Scaffold(
          appBar: CommonAppBar(
            leading: Builder(
              builder: (context) {
                return IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () {
                    LicenseRoute($extra: homeBloc).push<String>(context).then(
                      (value) {
                        if (value != null) {
                          homeBloc.add(
                            HomeEvent.updateLicense(
                              licenseName: value,
                            ),
                          );
                        }
                      },
                    );
                  },
                );
              },
            ),
            title: Text(
              '$title - ${state.licenseName ?? ''}',
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: _HomeMenuItems(
                      list: mockDataHomeMenuItems.slices(2).toList(),
                    ),
                  ),
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
      },
    );
  }
}

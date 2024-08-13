import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:gplx_600_cau/core/extension/theme_data_extension.dart';
import 'package:gplx_600_cau/core/gen/assets.gen.dart';
import 'package:gplx_600_cau/features/presentation/components/common_app_bar.dart';
import 'package:gplx_600_cau/features/presentation/ui/home/models/item_home.dart';

part 'widgets/home_menu_items.dart';
part 'widgets/home_menu_item_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        navigationPath: '/review-questions',
      ),
      ItemHome(
        title: 'Xem câu sai',
        icon: Assets.images.icFrequentMistakes,
        color: Colors.blue,
        navigationPath: '/frequent-mistakes',
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
        navigationPath: '/saved-question',
      ),
      ItemHome(
        title: 'Ôn tập biển báo',
        icon: Assets.images.icTrafficSigns,
        color: Colors.yellow,
        navigationPath: '/traffic-signs',
      )
    ];
    return Scaffold(
      appBar: CommonAppBar(
        title: Text(
          'Home',
          style: TextStyle(
            color: appColors.textPrimary,
            fontWeight: FontWeight.w700,
          ),
        ),
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _HomeMenuItems(
              list: mockDataHomeMenuItems.slices(2).toList(),
            )
          ],
        ),
      ),
    );
  }
}

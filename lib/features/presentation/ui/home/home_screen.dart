import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
        title: 'Đề ngẫu nhiên',
        icon: Assets.images.icRandomQuiz,
        color: Colors.amber,
        navigationPath: '/random-quiz',
      ),
      ItemHome(
        title: 'Thi theo bộ đề',
        icon: Assets.images.icExamBySet,
        color: Colors.red,
        navigationPath: '/exam-by-set',
      ),
      ItemHome(
        title: 'Xem câu hay bị sai',
        icon: Assets.images.icFrequentMistakes,
        color: Colors.blue,
        navigationPath: '/frequent-mistakes',
      ),
      ItemHome(
        title: 'Ôn tập câu hỏi',
        icon: Assets.images.icQuizSave,
        color: Colors.green,
        navigationPath: '/review-questions',
      ),
      ItemHome(
        title: 'Các biển báo',
        icon: Assets.images.icTrafficSigns,
        color: Colors.yellow,
        navigationPath: '/traffic-signs',
      ),
      ItemHome(
        title: 'Mẹo ghi nhớ',
        icon: Assets.images.icMemoryTips,
        color: Colors.purple,
        navigationPath: '/memory-tips',
      ),
      ItemHome(
        title: '60 câu liệt điểm',
        icon: Assets.images.icMemoryTips,
        color: Colors.brown,
        navigationPath: '/60-critical-questions',
      ),
      ItemHome(
        title: 'Những câu hay sai',
        icon: Assets.images.icMemoryTips,
        color: Colors.grey,
        navigationPath: '/common-mistakes',
      ),
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

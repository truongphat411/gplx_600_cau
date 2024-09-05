import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:gplx_600_cau/core/enum/question_type.dart';
import 'package:gplx_600_cau/core/extension/theme_data_extension.dart';
import 'package:gplx_600_cau/core/gen/assets.gen.dart';
import 'package:gplx_600_cau/core/routes/router.dart';
import 'package:gplx_600_cau/features/presentation/components/banner_ads_widget.dart';
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
        navigationPath: '/review-questions/false',
      ),
      ItemHome(
        title: 'Xem câu sai',
        icon: Assets.images.icFrequentMistakes,
        color: Colors.blue,
        navigationPath: 'review-questions/frequentMistakes',
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
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: Text(
          '600 câu hỏi GPLX - B1',
          style: TextStyle(
            color: appColors.textPrimary,
            fontWeight: FontWeight.w700,
          ),
        ),
        elevation: 1,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            // Add more drawer items here
          ],
        ),
      ),
      body: _HomeMenuItems(
        list: mockDataHomeMenuItems.slices(2).toList(),
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

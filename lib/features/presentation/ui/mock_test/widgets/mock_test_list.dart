// part of '../mock_test_screen.dart';

// class _MockTestList extends StatelessWidget {
//   const _MockTestList({
//     required this.tests,
//   });

//   final List<List<Test>> tests;

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       shrinkWrap: true,
//       physics: const NeverScrollableScrollPhysics(),
//       itemCount: tests.length,
//       itemBuilder: (_, i) {
//         final testItems = tests[i];
//         return IntrinsicHeight(
//           child: Row(
//             children: [
//               for (final item in testItems)
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                       vertical: 4,
//                       horizontal: 4,
//                     ),
//                     child: GestureDetector(
//                       // onTap: item.onTap,
//                       child: _HomeMenuItemTile(
//                         itemHome: item,
//                       ),
//                     ),
//                   ),
//                 ),
//               if (tests.length == 1) const Spacer(),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

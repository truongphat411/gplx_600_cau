part of '../home_screen.dart';

class _ItemHomeList extends StatelessWidget {
  _ItemHomeList({
    required this.title,
    required this.icon,
  });

  String title;
  String icon;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SvgPicture.asset(icon),
          Text(title),
        ],
      ),
    );
  }
}

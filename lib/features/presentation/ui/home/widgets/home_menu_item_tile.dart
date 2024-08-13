part of '../home_screen.dart';

class _HomeMenuItemTile extends StatelessWidget {
  _HomeMenuItemTile({
    required this.itemHome,
  });

  final ItemHome itemHome;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: itemHome.color,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            SvgPicture.asset(
              itemHome.icon,
              height: 32,
              colorFilter: const ColorFilter.mode(
                Colors.white70,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              itemHome.title,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

part of '../home_screen.dart';

class _HomeMenuItems extends StatelessWidget {
  const _HomeMenuItems({
    required this.list,
  });

  final List<List<ItemHome>> list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: list.length,
      itemBuilder: (_, i) {
        final homeMenuItems = list[i];
        return IntrinsicHeight(
          child: Row(
            children: [
              for (final item in homeMenuItems)
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 4,
                    ),
                    child: GestureDetector(
                      onTap: item.onTap,
                      child: _HomeMenuItemTile(
                        itemHome: item,
                      ),
                    ),
                  ),
                ),
              if (list.length == 1) const Spacer(),
            ],
          ),
        );
      },
    );
  }
}

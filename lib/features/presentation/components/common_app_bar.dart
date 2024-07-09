import 'package:flutter/material.dart';
import 'package:gplx_600_cau/core/extension/theme_data_extension.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({
    super.key,
    required this.title,
    this.leading,
    this.actions,
    this.bottom,
    this.isIconBack = true,
    this.leadingWidth,
    this.shadowColor,
    this.elevation = 1,
  });

  final Widget title;
  final Widget? leading;
  final double elevation;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;
  final bool? isIconBack;
  final double? leadingWidth;
  final Color? shadowColor;

  static const titleStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).appColors;
    return AppBar(
      backgroundColor: appColors.baseWhite,
      elevation: elevation,
      shadowColor: shadowColor,
      leadingWidth: leadingWidth,
      iconTheme: IconThemeData(
        color: appColors.baseBlack,
      ),
      leading: leading,
      automaticallyImplyLeading: isIconBack!,
      title: title,
      centerTitle: true,
      actions: actions,
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize {
    final bottomHeight = bottom?.preferredSize.height ?? 0;

    return Size.fromHeight(kToolbarHeight + bottomHeight);
  }
}

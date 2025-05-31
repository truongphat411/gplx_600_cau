import 'package:flutter/material.dart';
import 'package:gplx_600_cau/core/extension/theme_data_extension.dart';

class ControlButton extends StatelessWidget {
  const ControlButton({
    super.key,
    required this.icon,
    required this.label,
    this.onTap,
    this.textDirection,
  });

  final IconData icon;
  final String label;
  final VoidCallback? onTap;
  final TextDirection? textDirection;

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).appColors;
    return Material(
      color: Colors.transparent,
      child: Ink(
        decoration: BoxDecoration(
          color: appColors.baseGray.withValues(alpha: 0.2),
          borderRadius: BorderRadius.circular(16),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              textDirection: textDirection,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                Icon(icon),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

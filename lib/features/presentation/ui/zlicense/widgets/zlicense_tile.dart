import 'package:flutter/material.dart';
import 'package:gplx_600_cau/core/extension/theme_data_extension.dart';

class ZLicenseTile extends StatelessWidget {
  const ZLicenseTile({
    super.key,
    this.licenseName,
    this.description,
    this.isSelected = false,
  });

  final String? licenseName;
  final String? description;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).appColors;
    return Semantics(
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: appColors.baseWhite,
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
          boxShadow: [
            BoxShadow(
              color: appColors.baseGray.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bằng $licenseName',
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 17),
                        ),
                        Text(
                          description ?? '',
                          style: const TextStyle(
                              fontSize: 12, color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: isSelected
                      ? Icon(
                          Icons.check_circle,
                          color: appColors.baseLightGreen,
                        )
                      : Container(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

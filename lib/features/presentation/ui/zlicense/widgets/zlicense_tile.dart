import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ZLicenseTile extends StatelessWidget {
  ZLicenseTile({
    super.key,
    this.licenseName,
    this.description,
  });

  String? licenseName;
  String? description;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Bằng $licenseName',
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 1,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            const Gap(10),
            Text(description ?? ''),
          ],
        ),
      ),
    );
  }
}

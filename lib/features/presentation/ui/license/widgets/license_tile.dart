part of '../license_screen.dart';

class _LicenseTile extends StatelessWidget {
  const _LicenseTile({
    required this.licenseName,
    this.description,
    required this.licenseNameSelected,
    this.onTap,
  });

  final String licenseName;
  final String? description;
  final String licenseNameSelected;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).appColors;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: appColors.baseWhite,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 4,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bằng $licenseName',
                            style: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
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
                    child: licenseName == licenseNameSelected
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
      ),
    );
  }
}

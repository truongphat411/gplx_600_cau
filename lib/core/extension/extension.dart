extension LicenseColumnExt on String {
  String get toQuestionGroupColumn {
    switch (this) {
      case 'A1':
        return 'INGROUP_A1';
      case 'A':
        return 'INGROUP_A';
      case 'B1':
        return 'INGROUP_B1';
      case 'B':
        return 'INGROUP_B';
      default:
        return 'INGROUP_DTOE';
    }
  }
}

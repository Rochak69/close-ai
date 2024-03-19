extension StringExtension on String? {
  String removeTime() {
    return this?.substring(0, 10) ?? '';
  }

  String removeImgTag() {
    return this?.replaceAll(RegExp(r'<img\b[^>]*>'), '') ?? '';
  }

  bool isNullOrEmpty() {
    return this == null || this!.isEmpty;
  }

  String routePath() {
    return '/$this';
  }
}

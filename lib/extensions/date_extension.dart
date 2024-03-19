extension ShowDataInOwnFormat on DateTime {
  String toYYMMDD() {
    final monthStr = month < 10 ? '0$month' : '$month';
    final dayStr = day < 10 ? '0$day' : '$day';
    return '$year-$monthStr-$dayStr';
  }
}

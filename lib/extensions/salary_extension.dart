extension MoneyFormatting on String? {
  String formatAsMoney() {
    if (this == null || this!.isEmpty) {
      return '0.00';
    }

    final parts = this!.split('.');
    var wholePart = parts[0];
    var decimalPart = parts.length > 1 ? '.${parts[1]}' : '';
    if (decimalPart.length > 2) {
      decimalPart = decimalPart.substring(0, 3);
    }

    final regex = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
    wholePart =
        wholePart.replaceAllMapped(regex, (Match match) => '${match[1]},');

    return '$wholePart$decimalPart';
  }
}

import 'package:intl/intl.dart';

class NumberFormatter {
  static String formatCurrency(
    double amount, {
    String symbol = '₫',
    String locale = 'vi_VN',
  }) {
    final formatter = NumberFormat.currency(locale: locale, symbol: symbol);
    return formatter.format(amount);
  }

  static String formatNumber(double number, {int decimalPlaces = 0}) {
    final formatter =
        NumberFormat.decimalPattern()
          ..minimumFractionDigits = 0
          ..maximumFractionDigits = decimalPlaces;
    return formatter.format(number);
  }

  static String formatCompact(int number) {
    final formatter = NumberFormat.compact();
    return formatter.format(number);
  }

  static String formatPercentage(double value, {int decimalPlaces = 1}) {
    final formatter =
        NumberFormat.percentPattern()
          ..minimumFractionDigits = 0
          ..maximumFractionDigits = decimalPlaces;
    return formatter.format(value / 100);
  }
}

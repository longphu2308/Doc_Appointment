import 'package:intl/intl.dart';

class DateFormatter {
  static String formatDate(DateTime date, {String format = 'dd/MM/yyyy'}) {
    return DateFormat(format).format(date);
  }

  static String formatTime(DateTime date, {String format = 'HH:mm'}) {
    return DateFormat(format).format(date);
  }

  static String formatDateTime(
    DateTime date, {
    String format = 'dd/MM/yyyy HH:mm',
  }) {
    return DateFormat(format).format(date);
  }

  static String getDayOfWeek(DateTime date, {bool useShortName = false}) {
    final dayNames =
        useShortName
            ? ['CN', 'T2', 'T3', 'T4', 'T5', 'T6', 'T7']
            : [
              'Chủ Nhật',
              'Thứ Hai',
              'Thứ Ba',
              'Thứ Tư',
              'Thứ Năm',
              'Thứ Sáu',
              'Thứ Bảy',
            ];
    return dayNames[date.weekday % 7];
  }

  static String getRelativeTime(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inSeconds < 60) {
      return 'Vừa xong';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes} phút trước';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} giờ trước';
    } else if (difference.inDays < 7) {
      return '${difference.inDays} ngày trước';
    } else {
      return formatDate(date);
    }
  }

  static DateTime? parseDate(String date, {String format = 'dd/MM/yyyy'}) {
    try {
      return DateFormat(format).parse(date);
    } catch (e) {
      return null;
    }
  }
}

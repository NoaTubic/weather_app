import 'package:intl/intl.dart';

extension DateFormatMixin on DateTime {
  String formatDateShort() {
    final formattedDate = DateFormat('EEE, d MMM');
    return formattedDate.format(this);
  }

  String formatHours() {
    final formattedDate = DateFormat('j');
    return formattedDate.format(this);
  }

  String formatHours24() {
    final formattedDate = DateFormat('H');
    return formattedDate.format(this);
  }
}

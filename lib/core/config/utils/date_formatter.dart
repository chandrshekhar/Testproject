import 'package:intl/intl.dart';

class DateFormator {
  static String dateFormatter({required String pattern, required String dateTime}) {
    return DateFormat(pattern).format(DateTime.parse(dateTime));
  }
}

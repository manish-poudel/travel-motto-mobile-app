import 'package:intl/intl.dart';

class DateTimeUtils {
  static String formattedDate(DateTime dateTime) {
    return DateFormat('dd/MM/yyyy').format(dateTime);
  }

  static DateTime getDateFromDateString(String date) {
    List<String> dates = date.split("/");
    return DateTime(
        int.parse(dates[2]),
        int.parse(
          dates[1],
        ),
        int.parse(dates[0]));
  }
}

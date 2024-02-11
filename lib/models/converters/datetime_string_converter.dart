import 'package:freezed_annotation/freezed_annotation.dart';

class DateTimeStringConverter implements JsonConverter<DateTime, String> {
  const DateTimeStringConverter();

  @override
  DateTime fromJson(String time) {
    return DateTime.parse(time);
  }

  @override
  String toJson(DateTime date) => date.toIso8601String();
}

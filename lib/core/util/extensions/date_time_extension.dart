import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  DateTime get hardcoded => this;
  String get dMMMyyyy => DateFormat('d MMM yyyy').format(this);
  String get hhmma => DateFormat('hh:mm a').format(this);
}

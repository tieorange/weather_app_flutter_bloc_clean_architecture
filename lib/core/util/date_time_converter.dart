import 'package:intl/intl.dart';

extension IntDateConversion on int? {
  String formatDateTime() {
    final date = this ?? DateTime.now().millisecondsSinceEpoch;
    final dateTime = DateTime.fromMillisecondsSinceEpoch(date * 1000);
    final formattedDateTime = DateFormat('HH:mm dd.MM').format(dateTime);

    return formattedDateTime;
  }
  String formatTime() {
    final date = this ?? DateTime.now().millisecondsSinceEpoch;
    final dateTime = DateTime.fromMillisecondsSinceEpoch(date * 1000);
    final formattedDateTime = DateFormat('HH:mm').format(dateTime);

    return formattedDateTime;
  }
}

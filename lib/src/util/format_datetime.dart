import 'package:intl/intl.dart';

class TextFormat {
  /// Get date as a string for display.
  String getFormattedDate(String date) {
    var localDate = DateTime.parse(date).toLocal();
    var inputFormat = DateFormat('yyyy-MM-dd');
    var inputDate = inputFormat.parse(localDate.toString());
    var outputFormat = DateFormat('dd/MMM/yyyy');
    var outputDate = outputFormat.format(inputDate);

    return outputDate.toString();
  }

  String formatTime(String timeStr) {
    DateTime timeObj = DateTime.parse(timeStr);
    DateFormat formatter = DateFormat('hh:mm a');
    return formatter.format(timeObj);
  }
}

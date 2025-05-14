import 'package:syn_log_interface/src/models/log_event.dart';

/// The interface for prettify and format raw output.
///
/// String's splits and joins, additional timestamps, emoji and more.
abstract interface class LogFormatter {
  const LogFormatter();
  String format(LogEvent event);
}

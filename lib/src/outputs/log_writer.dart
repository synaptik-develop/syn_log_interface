import 'package:syn_log_interface/src/models/log_event.dart';
import 'package:syn_log_interface/src/outputs/log_formatter.dart';

/// The interface for different ways to record logs.
///
/// In file, in concole, by socket, etc.
/// You can freely implements you unique way for special purpose.
abstract interface class LogWriter {
  LogFormatter get formatter;
  void write(LogEvent event);
}

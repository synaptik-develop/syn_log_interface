import 'package:syn_log_interface/src/models/log_event.dart';
import 'package:syn_log_interface/src/outputs/log_format.dart';

abstract class LogWriter {
  LogFormat get formatter;
  void write(LogEvent event);
}

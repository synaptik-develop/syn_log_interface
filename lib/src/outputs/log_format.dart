import 'package:syn_log_interface/src/models/log_event.dart';

abstract interface class LogFormat {
  String format(LogEvent event);
}

import 'package:syn_log_interface/src/filters/log_level.dart';
import 'package:syn_log_interface/src/filters/log_source.dart';

final class LogEvent {
  const LogEvent({
    required this.sourceName,
    required this.isolateDebugName,
    required this.level,
    required this.message,
    required this.time,
    this.stackTrace,
  });

  factory LogEvent.fromMap(Map<String, Object> map) => LogEvent(
    sourceName: map['sourceName']! as SourceName,
    isolateDebugName:
        map['isolateDebugName'] == null
            ? null
            : map['isolateDebugName']! as String,
    level: LogLevel.fromWeight(map['logLevelWeight']! as int),
    message: map['message']! as String,
    time: DateTime.parse(map['dateTime']! as String),
    stackTrace:
        map['stackTrace'] == null
            ? null
            : StackTrace.fromString(map['stackTrace']! as String),
  );

  final SourceName sourceName;
  final String? isolateDebugName;
  final LogLevel level;
  final String message;
  final DateTime time;
  final StackTrace? stackTrace;

  Map<String, Object> toMap() {
    final mappedEvent = {
      'sourceName': sourceName,
      'logLevelWeight': level.weight,
      'message': message,
      'dateTime': time.toString(),
    };

    if (stackTrace != null) {
      mappedEvent['stackTrace'] = stackTrace.toString();
    }

    if (isolateDebugName != null) {
      mappedEvent['isolateDebugName'] = isolateDebugName!;
    }

    return mappedEvent;
  }
}

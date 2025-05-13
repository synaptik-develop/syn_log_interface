/// Severity of log.
///
/// Allow easily filter result, especially for different env.
enum LogLevel {
  verbose(weight: 0),
  debug(weight: 1),
  info(weight: 2),
  warning(weight: 3),
  error(weight: 4),
  fatal(weight: 5);

  const LogLevel({required this.weight});

  factory LogLevel.fromWeight(int weight) => _index[weight]!;

  static final _index =
      (() => Map.fromEntries(
            LogLevel.values.map((level) => MapEntry(level.weight, level)),
          ))
          .call();

  final int weight;
}

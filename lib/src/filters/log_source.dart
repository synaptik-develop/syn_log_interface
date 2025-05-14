typedef SourceName = String;

/// Special label for different source of log.
///
/// Allow easily filter result, for debug specific part of app.
abstract interface class ISource {
  const ISource();
  SourceName get name;
}

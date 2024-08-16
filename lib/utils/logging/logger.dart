import 'package:logger/logger.dart';

class TLoggerHelper {
  // Singleton instance of Logger
  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 2, // Customize as needed
      errorMethodCount: 8, // Customize as needed
      lineLength: 120, // Customize as needed
      colors: true, // Enable/Disable colors
      printEmojis: true, // Enable/Disable emojis
      printTime: true, // Enable/Disable time
      // Customize the log level based on your needs
    ),
    level: Level.debug,
  );

  // Debug level log
  static void debug(String message) {
    _logger.d(message);
  }

  // Info level log
  static void info(String message) {
    _logger.i(message);
  }

  // Warning level log
  static void warning(String message) {
    _logger.w(message);
  }

  // Error level log with optional error object and stack trace
  static void error(String message, [dynamic error]) {
    _logger.e(message, error: error, stackTrace: StackTrace.current);
  }
}

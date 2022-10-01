part of bilions_ui;

// ignore: camel_case_types
class console {
  static log(dynamic text, {dynamic payload}) {
    var logger = Logger(
        printer: PrettyPrinter(
      colors: true,
      methodCount: 0,
      printEmojis: false,
    ));
    logger.d(text.toString());
    if (payload != null) {
      logger.d(payload);
    }
  }
}

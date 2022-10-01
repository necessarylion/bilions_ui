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

extension IndexedIterable<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(E e, int i) f) {
    var i = 0;
    return map((e) => f(e, i++));
  }
}

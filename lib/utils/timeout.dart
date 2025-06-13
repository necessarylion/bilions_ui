part of bilions_ui;

setTimeout(Function func, int milliseconds) {
  Future.delayed(Duration(milliseconds: milliseconds), () {
    func();
  });
}

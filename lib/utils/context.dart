part of bilions_ui;

BuildContext getCurrentContext() {
  return BContext.navigatorKey.currentContext!;
}

hideCurrentContext({BuildContext? context}) {
  return Navigator.pop(context ?? getCurrentContext());
}

class BContext {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final BuildContext context = BContext.navigatorKey.currentContext!;

  BContext();
}

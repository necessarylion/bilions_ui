part of bilions_ui;

BuildContext getCurrentContext() {
  return BilionsContext.navigatorKey.currentContext!;
}

hideCurrentContext({BuildContext? context}) {
  return Navigator.pop(context ?? getCurrentContext());
}

class BilionsContext {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final BuildContext context = BilionsContext.navigatorKey.currentContext!;

  BilionsContext();
}

part of bilions_ui;

class BLoader {
  static show({
    BuildContext? context,
    Color? circleColor,
    Widget? child,
  }) {
    BuildContext ctx = context ?? getCurrentContext();
    showDialog(
      context: ctx,
      barrierDismissible: false,
      builder: (context) => Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: child ??
              CircularProgressIndicator(
                color: circleColor ?? BColors.primary,
              ),
        ),
      ),
    );
  }

  static hide({BuildContext? context}) {
    Navigator.pop(context ?? getCurrentContext());
  }
}

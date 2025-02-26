part of bilions_ui;

class BLoader {
  static show({BuildContext? context, Color? color}) {
    BuildContext ctx = context ?? getCurrentContext();
    showDialog(
      context: ctx,
      barrierDismissible: false,
      builder: (context) => Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: CircularProgressIndicator(
            color: color ?? BColors.primary,
          ),
        ),
      ),
    );
  }

  static hide({BuildContext? context}) {
    Navigator.pop(context ?? getCurrentContext());
  }
}

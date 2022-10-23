part of bilions_ui;

hideLoading({BuildContext? context}) {
  Navigator.pop(context ?? getCurrentContext());
}

loading({
  BuildContext? context,
  Color? color,
}) {
  BuildContext ctx = context ?? getCurrentContext();
  showDialog(
    context: ctx,
    barrierDismissible: false,
    builder: (context) => Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: CircularProgressIndicator(
          color: color ?? BilionsColors.primary,
        ),
      ),
    ),
  );
}

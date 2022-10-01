part of bilions_ui;

void toast(BuildContext context, title, {String type = 'success'}) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
      dismissDirection: DismissDirection.up,
      elevation: 0,
      content: Row(children: [
        AppTheme.getIcon(type),
        mr(1),
        Text(title),
      ]),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(0),
        ),
      ),
      padding: const EdgeInsets.only(top: 70, left: 15, right: 10),
      margin: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height - 120,
        right: 0,
        left: 0,
      ),
      action: SnackBarAction(
        label: 'Dismiss',
        textColor: AppTheme.getColor(type),
        onPressed: scaffold.hideCurrentSnackBar,
      ),
    ),
  );
}

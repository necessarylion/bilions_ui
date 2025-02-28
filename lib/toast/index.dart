part of bilions_ui;

class BToast {
  // Show a toast message
  static show({
    BuildContext? context,
    required String title,
    BVariant variant = BVariant.success,
    Duration? duration,
    double marginTop = 10,
    double marginLeft = 10,
    double marginRight = 10,
    double borderRadius = 10,
  }) {
    BuildContext ctx = context ?? getCurrentContext();
    double topPosition = kIsWeb ? marginTop : marginTop + 100;
    final scaffold = ScaffoldMessenger.of(ctx);
    scaffold.showSnackBar(
      SnackBar(
        duration: duration ?? const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        dismissDirection: DismissDirection.up,
        elevation: 0,
        content: Row(children: [
          BilionsTheme.getIcon(variant),
          const MarginRight(1),
          Expanded(child: Text(title)),
        ]),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        ),
        padding:
            const EdgeInsets.only(top: 10, left: 15, right: 10, bottom: 10),
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(ctx).size.height - (topPosition + 50),
          right: marginRight,
          left: marginLeft,
        ),
        action: SnackBarAction(
          label: 'Dismiss',
          textColor: BilionsTheme.getColor(variant),
          onPressed: scaffold.hideCurrentSnackBar,
        ),
      ),
    );
  }
}

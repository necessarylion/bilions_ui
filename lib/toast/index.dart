part of bilions_ui;

class BToast {
  // Show a toast message
  static show({
    BuildContext? context,
    required String title,
    BVariant? variant,
    Duration? duration,
    double top = 160,
  }) {
    BuildContext ctx = context ?? getCurrentContext();
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
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        padding:
            const EdgeInsets.only(top: 10, left: 15, right: 10, bottom: 10),
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(ctx).size.height - top,
          right: 10,
          left: 10,
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

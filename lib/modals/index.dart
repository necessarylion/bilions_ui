part of bilions_ui;

class BModal {
  static show({
    BuildContext? context,
    Widget? widget,
    Color? backgroundColor,
    double? radius,
    EdgeInsets? padding,
    bool barrierDismissible = true,
  }) {
    BuildContext ctx = context ?? getCurrentContext();
    double width = MediaQuery.of(ctx).size.width - 35;
    showDialog(
      context: ctx,
      barrierDismissible: barrierDismissible,
      builder: (context) => Dialog(
        backgroundColor: backgroundColor ?? BColors.modalBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius ?? 5)),
        ),
        insetPadding: padding ?? const EdgeInsets.all(0.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: width,
              child: widget,
            ),
          ],
        ),
      ),
    );
  }
}

part of bilions_ui;

class BModal {
  final BuildContext context;
  final Widget widget;
  final Color? backgroundColor;
  final double? radius;
  final EdgeInsets? padding;

  BModal(
    this.context,
    this.widget, {
    this.backgroundColor,
    this.radius,
    this.padding,
  }) {
    double width = MediaQuery.of(context).size.width - 35;
    showDialog(
      context: context,
      barrierDismissible: true,
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

part of bilions_ui;

modal(
  BuildContext context,
  Widget widget, {
  Color? backgroundColor,
  double? radius,
  EdgeInsets? padding,
}) {
  double width = MediaQuery.of(context).size.width - 35;
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) => Dialog(
      backgroundColor: backgroundColor ?? BilionsColors.modalBackground,
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

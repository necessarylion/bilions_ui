part of bilions_ui;

class BConfirmDialog {
  static show({
    required String title,
    BuildContext? context,
    BVariant? variant,
    String? message,
    Widget? messageWidget,
    String? confirmText,
    String? cancelText,
    Color? confirmTextColor,
    Color? cancelTextColor,
    required Function() onConfirm,
    Function()? onCancel,
    Color? lineColor,
    double? lineThickness,
  }) {
    BuildContext ctx = context ?? getCurrentContext();
    BModal.show(
      context: ctx,
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              bottom: 20,
              left: 15,
              right: 20,
            ),
            child: Container(
              padding: const EdgeInsets.only(left: 10, bottom: 3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      BilionsTheme.getIcon(variant),
                      const MarginRight(0.5),
                      Expanded(
                        child: Text(
                          title,
                          style: TextStyle(
                            color: BColors.primaryTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const MarginBottom(0.5),
                  if (messageWidget != null) messageWidget,
                  if (message != null)
                    Span(
                      message,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 10,
                      color: BColors.secondaryTextColor,
                    ),
                ],
              ),
            ),
          ),
          HorizontalLine(color: lineColor, thickness: lineThickness),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.pop(ctx);
                    if (onCancel != null) onCancel();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      (cancelText ?? 'Cancel').toUpperCase(),
                      style: TextStyle(
                        color: cancelTextColor ?? BColors.secondaryTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              VerticalLine(color: lineColor, thickness: lineThickness),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.pop(ctx);
                    onConfirm();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      (confirmText ?? 'Confirm').toUpperCase(),
                      style: TextStyle(
                        color:
                            confirmTextColor ?? BilionsTheme.getColor(variant),
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

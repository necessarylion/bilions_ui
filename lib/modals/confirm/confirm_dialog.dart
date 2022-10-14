part of bilions_ui;

class ConfirmDialog extends StatelessWidget {
  final String title;
  final String? variant;
  final String? message;
  final String? confirmText;
  final String? cancelText;
  final Color? confirmColor;
  final Color? cancelColor;
  final Function() confirmed;
  final Function()? canceled;
  const ConfirmDialog(
    this.title, {
    Key? key,
    this.message,
    required this.confirmed,
    this.canceled,
    this.confirmText,
    this.cancelText,
    this.confirmColor,
    this.cancelColor,
    this.variant = 'primary',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    mr(0.5),
                    Expanded(
                      child: Text(
                        title,
                        style: TextStyle(
                          color: BilionsColors.primaryTextColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                mb(0.5),
                if (message != null)
                  Span(
                    message ?? '',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 10,
                    color: BilionsColors.secondaryTextColor,
                  ),
              ],
            ),
          ),
        ),
        horizontalLine(),
        Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  if (canceled != null) canceled!();
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    (cancelText ?? 'Cancel').toUpperCase(),
                    style: TextStyle(
                      color: cancelColor ?? BilionsColors.secondaryTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            verticalLine(),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  confirmed();
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    (confirmText ?? 'Confirm').toUpperCase(),
                    style: TextStyle(
                      color: confirmColor ?? BilionsTheme.getColor(variant),
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
    );
  }
}

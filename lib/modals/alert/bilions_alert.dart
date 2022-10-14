part of bilions_ui;

class BilionsAlert extends StatelessWidget {
  final String title;
  final String message;
  final String? variant;
  final Function? onClosed;
  final bool showClosedIndicator;
  final Color? backgroundColor;
  final Widget? icon;
  const BilionsAlert(
    this.title,
    this.message, {
    Key? key,
    this.variant = 'warning',
    this.onClosed,
    this.icon,
    this.backgroundColor,
    this.showClosedIndicator = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding:
              const EdgeInsets.only(left: 15, top: 10, right: 10, bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              width: 1,
              color: BilionsColors.lightGrey,
            ),
            color: backgroundColor ?? BilionsColors.modalBackground,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  icon ?? BilionsTheme.getIcon(variant),
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
              Span(
                message,
                overflow: TextOverflow.ellipsis,
                maxLines: 10,
                color: BilionsColors.secondaryTextColor,
              ),
            ],
          ),
        ),
        Positioned(
          left: 1,
          top: 2,
          bottom: 2,
          child: Container(
            width: 4,
            height: double.infinity,
            decoration: BoxDecoration(
              color: BilionsTheme.getColor(variant),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
          ),
        ),
        if (showClosedIndicator)
          Positioned(
            right: 15,
            top: 10,
            child: InkWell(
              onTap: () {
                if (onClosed != null) {
                  onClosed!();
                }
              },
              child: Icon(
                Icons.close,
                color: BilionsColors.secondaryTextColor,
                size: 20,
              ),
            ),
          ),
      ],
    );
  }
}

part of bilions_ui;

class BAlert extends StatelessWidget {
  final String title;
  final String message;
  final BVariant? variant;
  final Function? onClosed;
  final Color? backgroundColor;
  final Widget? icon;
  final double? borderWidth;
  const BAlert({
    Key? key,
    required this.title,
    required this.message,
    this.variant = BVariant.warning,
    this.onClosed,
    this.icon,
    this.backgroundColor,
    this.borderWidth = 1,
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
            border: borderWidth == 0
                ? null
                : Border.all(
                    width: 1,
                    color: BColors.lightGrey,
                  ),
            color: backgroundColor ?? BColors.modalBackground,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  icon ?? BilionsTheme.getIcon(variant),
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
              Span(
                message,
                overflow: TextOverflow.ellipsis,
                maxLines: 10,
                color: BColors.secondaryTextColor,
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
        if (onClosed != null)
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
                color: BColors.secondaryTextColor,
                size: 20,
              ),
            ),
          ),
      ],
    );
  }
}

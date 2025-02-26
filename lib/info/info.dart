part of bilions_ui;

class BInfo extends StatelessWidget {
  final String title;
  final String message;
  final BVariant? variant;
  final bool? showClose;
  final double borderThickness;
  final double borderRadius;

  const BInfo({
    required this.title,
    required this.message,
    Key? key,
    this.variant = BVariant.success,
    this.showClose = false,
    this.borderThickness = 0,
    this.borderRadius = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: decoration(),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 15,
              bottom: 20,
              left: 15,
              right: 20,
            ),
            child: Container(
              padding: const EdgeInsets.only(left: 10, bottom: 3),
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                      width: 3, color: BilionsTheme.getColor(variant)),
                ),
              ),
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
                            color: BilionsColors.primaryTextColor,
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
                    color: BilionsColors.secondaryTextColor,
                  ),
                ],
              ),
            ),
          ),
        ),
        if (showClose == true)
          Positioned(
            right: 15,
            top: 10,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
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

  decoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(borderRadius),
      border: borderThickness == 0
          ? null
          : Border.all(
              color: BilionsTheme.getColor(variant), width: borderThickness),
      gradient: const LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Colors.transparent,
          Colors.transparent,
        ],
      ),
    );
  }
}

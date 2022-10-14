part of bilions_ui;

class AlertModal extends StatelessWidget {
  final String title;
  final String message;
  final String? variant;
  const AlertModal(
    this.title,
    this.message, {
    Key? key,
    this.variant = 'success',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
            decoration: BoxDecoration(
              border: Border(
                left:
                    BorderSide(width: 3, color: BilionsTheme.getColor(variant)),
              ),
            ),
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
}

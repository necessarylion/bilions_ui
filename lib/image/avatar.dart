part of bilions_ui;

class Avatar extends StatelessWidget {
  final String src;
  final String? title;
  final String? subTitle;
  final double? size;
  final Color? backgroundColor;
  const Avatar(
    this.src, {
    Key? key,
    this.title,
    this.size = 40,
    this.backgroundColor,
    this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImageWidget(
          src,
          height: size,
          borderColor: backgroundColor ?? Colors.transparent,
          width: size,
          radius: 300,
        ),
        if (title != null) mr(1),
        if (title != null)
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              H(title),
              Span(
                subTitle,
                color: BilionsColors.grey,
              ),
            ],
          ))
      ],
    );
  }
}

part of bilions_ui;

class Avatar extends StatelessWidget {
  final String src;
  final String? title;
  final String? subTitle;
  const Avatar(
    this.src, {
    Key? key,
    this.title,
    this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImageWidget(
          src,
          height: 40,
          width: 40,
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
                color: AppColors.grey,
              ),
            ],
          ))
      ],
    );
  }
}

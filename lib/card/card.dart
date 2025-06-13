part of bilions_ui;

class BCard extends StatelessWidget {
  final Widget body;
  final Widget? header;
  final Widget? footer;
  final String? title;
  final bool showLine;
  final Color? backgroundColor;
  final double borderRadius;
  final Function()? onPressed;

  const BCard({
    Key? key,
    this.header,
    this.title,
    required this.body,
    this.footer,
    this.showLine = true,
    this.backgroundColor,
    this.borderRadius = 5,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            backgroundColor ?? BColors.white,
            backgroundColor ?? BColors.white,
          ],
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          hoverColor: Colors.white,
          borderRadius: BorderRadius.circular(borderRadius),
          onTap: onPressed,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (_getHeader() != null) _getHeader(),
              if (_getHeader() != null && showLine) const HorizontalLine(),
              Padding(
                padding: EdgeInsets.only(
                  top: 5,
                  left: 15,
                  right: 15,
                  bottom: footer != null ? 10.0 : 15.0,
                ),
                child: body,
              ),
              if (footer != null && showLine) const HorizontalLine(),
              if (footer != null)
                Container(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                    bottom: 15,
                    top: 10,
                  ),
                  child: footer,
                ),
            ],
          ),
        ),
      ),
    );
  }

  _getHeader() {
    if (header != null) {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: header,
      );
    }
    if (title != null) {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: H(title ?? ''),
      );
    }
    return null;
  }
}

part of bilions_ui;

class PrimaryButton extends StatelessWidget {
  final double? width;
  final bool disable;
  final String title;
  final Function()? onPressed;
  final String variant;
  final double radius;
  const PrimaryButton(
    this.title, {
    Key? key,
    this.width,
    this.disable = false,
    this.onPressed,
    this.variant = 'primary',
    this.radius = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: !disable
              ? [
                  BilionsTheme.getColor(variant),
                  BilionsTheme.getColor(variant),
                ]
              : [
                  BilionsColors.grey,
                  BilionsColors.grey,
                ],
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(radius),
          onTap: onPressed != null && !disable ? onPressed : null,
          child: SizedBox(
            width: width ?? double.infinity,
            height: 50,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

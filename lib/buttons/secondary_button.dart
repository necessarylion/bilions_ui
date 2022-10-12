part of bilions_ui;

class SecondaryButton extends StatelessWidget {
  final double? width;
  final String title;
  final Function()? onPressed;
  final String variant;
  final double radius;
  final Color? color;
  final Widget? icon;
  final List<Widget>? children;
  const SecondaryButton(
    this.title, {
    Key? key,
    this.width,
    this.onPressed,
    this.color,
    this.icon,
    this.children,
    this.variant = 'primary',
    this.radius = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
            color: color ?? BilionsTheme.getColor(variant), width: 1),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Colors.transparent,
            Colors.transparent,
          ],
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: onPressed,
          child: SizedBox(
            width: width != null ? (width! - 4) : (double.infinity - 4),
            height: 47,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: children ??
                  [
                    if (icon != null)
                      SizedBox(
                        child: icon,
                      ),
                    if (icon != null) mr(1),
                    Text(
                      title,
                      style: TextStyle(
                        color: color ?? BilionsTheme.getColor(variant),
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

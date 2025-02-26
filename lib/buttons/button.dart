part of bilions_ui;

enum BButtonType {
  flat,
  outline,
}

/// BButton is a widget that shows a button.
/// It is used to show a button.
///
/// Example
/// ```
/// BButton(title: 'Button', onPressed: () {})
/// BButton(title: 'Button', onPressed: () {}, variant: BVariant.primary)
/// BButton(title: 'Button', onPressed: () {}, variant: BVariant.primary, type: BButtonType.outline)
/// ```
class BButton extends StatelessWidget {
  final double? width;
  final double? height;
  final bool disable;
  final String? title;
  final Function()? onPressed;
  final BVariant variant;
  final double radius;
  final Color? color;
  final Widget? icon;
  final List<Widget>? children;
  final BButtonType type;
  const BButton({
    Key? key,
    this.title,
    this.width,
    this.height = 50,
    this.disable = false,
    this.onPressed,
    this.color,
    this.children,
    this.icon,
    this.variant = BVariant.primary,
    this.radius = 10,
    this.type = BButtonType.flat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration(),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(radius),
          onTap: onPressed != null && !disable ? onPressed : null,
          child: SizedBox(
            width: width ?? double.infinity,
            height: height,
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
                    if (icon != null && title != null) const MarginRight(1),
                    if (title != null)
                      Text(
                        title ?? '',
                        style: TextStyle(
                          color: getColor(),
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

  BoxDecoration decoration() {
    if (type == BButtonType.outline) {
      return BoxDecoration(
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
      );
    }
    // flat
    return BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: !disable
            ? [
                color ?? BilionsTheme.getColor(variant),
                color ?? BilionsTheme.getColor(variant),
              ]
            : [
                BColors.grey,
                BColors.grey,
              ],
      ),
    );
  }

  getColor() {
    if (type == BButtonType.flat) return Colors.white;
    return color ?? BilionsTheme.getColor(variant);
  }
}

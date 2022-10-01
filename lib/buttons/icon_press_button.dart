part of bilions_ui;

class IconPressButton extends StatelessWidget {
  final Widget icon;
  final Color? background;
  final EdgeInsets? padding;
  final Function()? onPressed;
  const IconPressButton(
    this.icon, {
    Key? key,
    this.background,
    this.padding,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Material(
        color: Colors.transparent,
        child: Container(
          padding: padding ?? const EdgeInsets.all(7),
          decoration: BoxDecoration(
            color: background ?? AppColors.fullDark,
            borderRadius: const BorderRadius.all(
              Radius.circular(300),
            ),
          ),
          child: icon,
        ),
      ),
    );
  }
}

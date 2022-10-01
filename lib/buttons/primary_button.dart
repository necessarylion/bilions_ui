part of bilions_ui;

class PrimaryButton extends StatelessWidget {
  final double? width;
  final bool disable;
  final String title;
  final Color? color;
  final Function()? onPressed;
  const PrimaryButton(
    this.title, {
    Key? key,
    this.width,
    this.disable = false,
    this.onPressed,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: !disable
              ? [
                  color ?? AppColors.primary,
                  color ?? AppColors.primary,
                ]
              : [
                  AppColors.grey,
                  AppColors.grey,
                ],
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
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

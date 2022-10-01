part of bilions_ui;

Widget horizontalLine({Color? color, double? thickness, double? width}) {
  return Container(
    width: width ?? double.infinity,
    height: thickness ?? 1,
    color: color ?? AppColors.lightGrey,
  );
}

Widget mb(double value) {
  return SizedBox(height: value * 10);
}

Widget mr(double value) {
  return SizedBox(width: value * 10);
}

Widget verticalLine({Color? color, double? thickness, double? height}) {
  return Container(
    width: thickness ?? 1,
    height: height ?? 45,
    color: color ?? AppColors.lightGrey,
  );
}

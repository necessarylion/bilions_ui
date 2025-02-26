part of bilions_ui;

class HorizontalLine extends StatelessWidget {
  final Color? color;
  final double? thickness;
  final double? width;

  const HorizontalLine({
    super.key,
    this.color,
    this.thickness,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: thickness ?? 1,
      color: color ?? BilionsColors.lightGrey,
    );
  }
}

class VerticalLine extends StatelessWidget {
  final Color? color;
  final double? thickness;
  final double? height;

  const VerticalLine({super.key, this.color, this.thickness, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: thickness ?? 1,
      height: height ?? 45,
      color: color ?? BilionsColors.lightGrey,
    );
  }
}

class MarginRight extends StatelessWidget {
  final double value;
  const MarginRight(this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: value * 10);
  }
}

class MarginBottom extends StatelessWidget {
  final double value;
  const MarginBottom(this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: value * 10);
  }
}

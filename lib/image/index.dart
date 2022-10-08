part of bilions_ui;

class ImageWidget extends StatelessWidget {
  final String image;
  final double? width;
  final double? height;
  final BoxFit fit;
  final double radius;
  final double borderWidth;
  final Color? borderColor;
  final AlignmentGeometry alignment;
  const ImageWidget(
    this.image, {
    Key? key,
    this.width,
    this.height,
    this.radius = 2,
    this.borderColor,
    this.borderWidth = 0,
    this.fit = BoxFit.contain,
    this.alignment = Alignment.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: borderColor ?? BilionsColors.white,
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      ),
      padding: EdgeInsets.all(borderWidth),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: renderImage(),
      ),
    );
  }

  renderImage() {
    final extension = flutter_path.extension(image);
    if (extension == '.svg') {
      if (image.startsWith('http')) {
        return SvgPicture.network(
          image,
          width: width,
          height: height,
          fit: fit,
          alignment: alignment,
        );
      }
      return SvgPicture.asset(
        image,
        width: width,
        height: height,
        fit: fit,
        alignment: alignment,
      );
    } else {
      if (image.startsWith('http')) {
        return Image.network(
          image,
          width: width,
          height: height,
          fit: fit,
          alignment: alignment,
        );
      }
      return Image.asset(
        image,
        width: width,
        height: height,
        fit: fit,
        alignment: alignment,
      );
    }
  }
}

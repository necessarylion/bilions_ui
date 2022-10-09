part of bilions_ui;

class H extends StatelessWidget {
  final String? data;
  final Color? color;
  final double size;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;

  const H(
    this.data, {
    Key? key,
    this.style,
    this.color,
    this.size = 14,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          data ?? '',
          style: style ??
              TextStyle(
                color: color ?? BilionsColors.black,
                fontWeight: FontWeight.bold,
                fontSize: size,
                height: 1.5,
              ),
          strutStyle: strutStyle,
          textAlign: textAlign,
          locale: locale,
          softWrap: softWrap,
          overflow: overflow,
          textScaleFactor: textScaleFactor,
          maxLines: maxLines,
          semanticsLabel: semanticsLabel,
          textWidthBasis: textWidthBasis,
          textHeightBehavior: textHeightBehavior,
        )
      ],
    );
  }
}

class P extends StatelessWidget {
  final String? data;
  final Color? color;
  final double size;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;

  const P(
    this.data, {
    Key? key,
    this.style,
    this.color,
    this.size = 14,
    this.textAlign,
    this.strutStyle,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data ?? '',
            style: style ??
                TextStyle(
                  color: color ?? BilionsColors.black,
                  fontSize: size,
                  height: 1.5,
                ),
            strutStyle: strutStyle,
            textAlign: textAlign,
            locale: locale,
            softWrap: softWrap,
            overflow: overflow,
            textScaleFactor: textScaleFactor,
            maxLines: maxLines,
            semanticsLabel: semanticsLabel,
            textWidthBasis: textWidthBasis,
            textHeightBehavior: textHeightBehavior,
          ),
          mb(0.5),
        ],
      ),
    );
  }
}

class Span extends StatelessWidget {
  final String? data;
  final Color? color;
  final double size;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;

  const Span(
    this.data, {
    Key? key,
    this.style,
    this.color,
    this.size = 14,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? '',
      style: style ??
          TextStyle(
            color: color ?? BilionsColors.black,
            fontSize: size,
            height: 1.5,
          ),
      strutStyle: strutStyle,
      textAlign: textAlign,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
    );
  }
}

class TextCenter extends StatelessWidget {
  final String? data;
  final Color? color;
  final double? size;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final bool bold;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;

  const TextCenter(
    this.data, {
    Key? key,
    this.style,
    this.color,
    this.size,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.bold = false,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? '',
      style: style ??
          TextStyle(
            color: color ?? BilionsColors.black,
            fontSize: size,
            fontWeight: bold ? FontWeight.bold : FontWeight.normal,
            height: 1.5,
          ),
      strutStyle: strutStyle,
      textAlign: textAlign ?? TextAlign.center,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
    );
  }
}

class TextLeft extends StatelessWidget {
  final String? data;
  final Color? color;
  final double? size;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final bool bold;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;

  const TextLeft(
    this.data, {
    Key? key,
    this.style,
    this.color,
    this.bold = false,
    this.size,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? '',
      style: style ??
          TextStyle(
            color: color ?? BilionsColors.black,
            fontSize: size,
            fontWeight: bold ? FontWeight.bold : FontWeight.normal,
            height: 1.5,
          ),
      strutStyle: strutStyle,
      textAlign: textAlign ?? TextAlign.left,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
    );
  }
}

class TextRight extends StatelessWidget {
  final String? data;
  final Color? color;
  final double? size;
  final TextStyle? style;
  final bool bold;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;

  const TextRight(
    this.data, {
    Key? key,
    this.style,
    this.color,
    this.size,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.bold = false,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? '',
      style: style ??
          TextStyle(
            color: color ?? BilionsColors.black,
            fontSize: size,
            fontWeight: bold ? FontWeight.bold : FontWeight.normal,
            height: 1.5,
          ),
      strutStyle: strutStyle,
      textAlign: textAlign ?? TextAlign.right,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
    );
  }
}

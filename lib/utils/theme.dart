part of bilions_ui;

class BilionsTheme {
  static Color getColor(BVariant? variant) {
    if (variant == BVariant.success) {
      return BilionsColors.success;
    }
    if (variant == BVariant.danger) {
      return BilionsColors.danger;
    }
    if (variant == BVariant.warning) {
      return BilionsColors.warning;
    }
    if (variant == BVariant.info) {
      return BilionsColors.info;
    }
    return BilionsColors.primary;
  }

  static Widget getIcon(BVariant? variant) {
    if (variant == BVariant.success) {
      return Icon(
        Icons.check_circle,
        color: getColor(variant),
      );
    }
    if (variant == BVariant.danger) {
      return Icon(
        Icons.error_rounded,
        color: getColor(variant),
      );
    }
    if (variant == BVariant.warning) {
      return Icon(
        Icons.info,
        color: getColor(variant),
      );
    }
    return Icon(
      Icons.info_sharp,
      color: getColor(variant),
    );
  }

  static Color getLightColor(BVariant? variant) {
    if (variant == BVariant.success) {
      return BilionsColors.successLight;
    }
    if (variant == BVariant.danger) {
      return BilionsColors.dangerLight;
    }
    if (variant == BVariant.warning) {
      return BilionsColors.warningLight;
    }
    if (variant == BVariant.info) {
      return BilionsColors.infoLight;
    }
    return BilionsColors.primaryLight;
  }
}

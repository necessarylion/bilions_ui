part of bilions_ui;

class BilionsTheme {
  static Color getColor(BVariant? variant) {
    if (variant == BVariant.success) {
      return BColors.success;
    }
    if (variant == BVariant.danger) {
      return BColors.danger;
    }
    if (variant == BVariant.warning) {
      return BColors.warning;
    }
    if (variant == BVariant.info) {
      return BColors.info;
    }
    return BColors.primary;
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
      return BColors.successLight;
    }
    if (variant == BVariant.danger) {
      return BColors.dangerLight;
    }
    if (variant == BVariant.warning) {
      return BColors.warningLight;
    }
    if (variant == BVariant.info) {
      return BColors.infoLight;
    }
    return BColors.primaryLight;
  }
}

part of bilions_ui;

class BilionsTheme {
  static Color getColor(String? variant) {
    if (variant == 'success') {
      return BilionsColors.success;
    }
    if (variant == 'danger') {
      return BilionsColors.danger;
    }
    if (variant == 'warning') {
      return BilionsColors.warning;
    }
    if (variant == 'info') {
      return BilionsColors.info;
    }
    return BilionsColors.primary;
  }

  static Widget getIcon(String? variant) {
    if (variant == 'success') {
      return Icon(
        Icons.check_circle,
        color: getColor(variant),
      );
    }
    if (variant == 'danger') {
      return Icon(
        Icons.error_rounded,
        color: getColor(variant),
      );
    }
    if (variant == 'warning') {
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

  static Color getLightColor(String? variant) {
    if (variant == 'success') {
      return BilionsColors.successLight;
    }
    if (variant == 'danger') {
      return BilionsColors.dangerLight;
    }
    if (variant == 'warning') {
      return BilionsColors.warningLight;
    }
    if (variant == 'info') {
      return BilionsColors.infoLight;
    }
    return BilionsColors.primaryLight;
  }
}

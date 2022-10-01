part of bilions_ui;

class AppTheme {
  static Color getColor(String? type) {
    if (type == 'success') {
      return AppColors.success;
    }
    if (type == 'danger') {
      return AppColors.danger;
    }
    if (type == 'warning') {
      return AppColors.warning;
    }
    return AppColors.primary;
  }

  static Widget getIcon(String? type) {
    if (type == 'success') {
      return Icon(
        Icons.check_circle,
        color: getColor(type),
      );
    }
    if (type == 'danger') {
      return Icon(
        Icons.error_rounded,
        color: getColor(type),
      );
    }
    if (type == 'warning') {
      return Icon(
        Icons.info,
        color: getColor(type),
      );
    }
    return Icon(
      Icons.info_sharp,
      color: getColor(type),
    );
  }
}

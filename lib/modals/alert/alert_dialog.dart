part of bilions_ui;

class BAlertDialog {
  /// Show a modal alert dialog
  static show({
    BuildContext? context,
    required String title,
    required String message,
    BVariant? variant,
    bool? showClose = true,
  }) {
    BModal(
      context ?? getCurrentContext(),
      BInfo(
        title: title,
        message: message,
        variant: variant,
        showClose: showClose,
      ),
    );
  }

  static hide({BuildContext? context}) {
    Navigator.pop(context ?? getCurrentContext());
  }
}

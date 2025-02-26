part of bilions_ui;

class BImagePreviewModal {
  static show({
    BuildContext? context,
    List? images,
    int? index,
    Widget? closeButton,
    Color? backgroundColor,
  }) {
    showModalBottomSheet(
      context: context ?? getCurrentContext(),
      isScrollControlled: true,
      backgroundColor: backgroundColor ?? BilionsColors.dark,
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 1,
          child: BImagePreview(
            images ?? [],
            index: index,
            showCloseButton: true,
            closeButton: closeButton,
            backgroundColor: backgroundColor,
          ),
        );
      },
    );
  }

  static hide({BuildContext? context}) {
    Navigator.pop(context ?? getCurrentContext());
  }
}

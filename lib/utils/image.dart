part of bilions_ui;

preview(BuildContext context, List images, {int? index}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: BilionsColors.dark,
    builder: (context) {
      return FractionallySizedBox(
        heightFactor: 1,
        child: ImagePreviewModal(images, index: index),
      );
    },
  );
}

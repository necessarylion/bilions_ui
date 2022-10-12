part of bilions_ui;

alert(BuildContext context, String title, String message, {String? variant}) {
  modal(
    context,
    AlertModal(
      title,
      message,
      variant: variant,
    ),
  );
}

part of bilions_ui;

alert(BuildContext context, String title, String message, {String? type}) {
  modal(
    context,
    AlertModal(
      title,
      message,
      variant: type,
    ),
  );
}

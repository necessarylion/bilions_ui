part of bilions_ui;

class ShowBConfirmDialog {
  final BuildContext context;
  final Widget confirmWidget;

  ShowBConfirmDialog(this.context, this.confirmWidget) {
    BModal(context, confirmWidget);
  }
}

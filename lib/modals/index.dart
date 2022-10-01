part of bilions_ui;

modal(BuildContext context, Widget widget) {
  double width = MediaQuery.of(context).size.width - 35;
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) => Dialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      insetPadding: const EdgeInsets.all(0.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: width,
            child: widget,
          ),
        ],
      ),
    ),
  );
}

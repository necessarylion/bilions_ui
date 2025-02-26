part of bilions_ui;

class BBottomSheetMenu {
  // show bottom sheet menu
  static show({
    BuildContext? context,
    required Widget widget,
    Color? backgroundColor,
    double? radius,
    Color? barColor,
  }) {
    showModalBottomSheet(
      context: context ?? getCurrentContext(),
      backgroundColor: backgroundColor ?? BilionsColors.modalBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(radius ?? 20),
          topRight: Radius.circular(radius ?? 20),
        ),
      ),
      builder: (_) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const MarginBottom(0.5),
          Container(
            height: 4,
            width: 50,
            decoration: BoxDecoration(
              color: barColor ?? BilionsColors.primary,
              borderRadius: const BorderRadius.all(Radius.circular(3)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 30),
            child: widget,
          ),
        ],
      ),
    );
  }

  // hide bottom sheet menu
  static hide({BuildContext? context}) {
    Navigator.pop(context ?? getCurrentContext());
  }
}

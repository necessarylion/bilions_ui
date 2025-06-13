part of bilions_ui;

class BBottomSheetMenu {
  /// Show a bottom sheet menu
  ///
  /// [context] is the context of the widget
  /// [widget] is the widget to show in the bottom sheet
  /// [backgroundColor] is the background color of the bottom sheet
  /// [radius] is the radius of the bottom sheet
  /// [barColor] is the color of the bar at the top of the bottom sheet
  ///
  /// Example
  /// ```
  /// BBottomSheetMenu.show(
  ///   context: context,
  ///   widget: BBottomSheetMenuList(
  ///     list: [
  ///       MenuListItem(
  ///         title: 'Item 1',
  ///         onPressed: () {},
  ///       ),
  ///     ],
  ///   ),
  ///   backgroundColor: backgroundColor,
  ///   radius: radius,
  ///   barColor: barColor,
  /// );
  /// ```
  static show({
    BuildContext? context,
    required Widget widget,
    Color? backgroundColor,
    double? radius,
    Color? barColor,
  }) {
    showModalBottomSheet(
      context: context ?? getCurrentContext(),
      backgroundColor: backgroundColor ?? BColors.modalBackground,
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
              color: barColor ?? BColors.primary,
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

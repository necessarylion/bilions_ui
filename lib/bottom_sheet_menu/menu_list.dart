part of bilions_ui;

/// BBottomSheetMenuList is a widget that shows a list of items in a bottom sheet menu.
/// It is used to show a list of items in a bottom sheet menu.
///
/// Example
/// ```
/// BBottomSheetMenuList(
///   list: [
///     MenuListItem(title: 'Item 1', onPressed: () {}),
///     MenuListItem(title: 'Item 2', onPressed: () {}),
///   ],
/// );
/// ```
class BMenuList extends StatelessWidget {
  final List<BMenuListItem> list;
  final Color? lineColor;
  final double? lineThickness;
  const BMenuList({
    required this.list,
    Key? key,
    this.lineColor,
    this.lineThickness,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...list.map((BMenuListItem list) => _list(list)).toList(),
      ],
    );
  }

  _list(BMenuListItem list) {
    return InkWell(
      onTap: list.onPressed,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: BColors.primaryLight,
                    borderRadius: const BorderRadius.all(Radius.circular(300)),
                  ),
                  child: list.icon,
                ),
                const MarginRight(1),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      H(list.title.toUpperCase()),
                      if (list.subTitle != null)
                        Span(
                          list.subTitle,
                          color: BColors.grey,
                          size: 13,
                        )
                    ],
                  ),
                ),
                list.subFixIcon ??
                    Icon(Icons.chevron_right, color: BColors.primary)
              ],
            ),
          ),
          HorizontalLine(color: lineColor, thickness: lineThickness),
        ],
      ),
    );
  }
}

class BMenuListItem {
  final String title;
  final String? subTitle;
  final Widget icon;
  final Widget? subFixIcon;
  final Function()? onPressed;

  const BMenuListItem({
    required this.icon,
    this.subTitle,
    this.onPressed,
    this.subFixIcon,
    required this.title,
  });
}

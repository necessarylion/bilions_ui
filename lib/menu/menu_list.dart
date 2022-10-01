part of bilions_ui;

class MenuList extends StatelessWidget {
  final List<MenuListItem> list;

  const MenuList(this.list, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...list.map((MenuListItem list) => _list(list)).toList(),
      ],
    );
  }

  _list(MenuListItem list) {
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
                    color: AppColors.primaryLight,
                    borderRadius: const BorderRadius.all(Radius.circular(300)),
                  ),
                  child: list.icon,
                ),
                mr(1),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      H(list.title.toUpperCase()),
                      if (list.subTitle != null)
                        Span(
                          list.subTitle,
                          color: AppColors.grey,
                          size: 13,
                        )
                    ],
                  ),
                ),
                list.subFixIcon ??
                    Icon(Icons.chevron_right, color: AppColors.primary)
              ],
            ),
          ),
          horizontalLine()
        ],
      ),
    );
  }
}

class MenuListItem {
  final String title;
  final String? subTitle;
  final Widget icon;
  final Widget? subFixIcon;
  final Function()? onPressed;

  const MenuListItem(
    this.icon, {
    this.subTitle,
    this.onPressed,
    this.subFixIcon,
    required this.title,
  });
}

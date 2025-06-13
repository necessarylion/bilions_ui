part of bilions_ui;

class BListView extends StatefulWidget {
  final List<Widget> children;
  final Function? onScrollEnded;
  final Axis? scrollDirection;
  const BListView(
      {super.key,
      required this.children,
      this.onScrollEnded,
      this.scrollDirection});

  @override
  State<BListView> createState() => _BilionsListViewState();
}

class _BilionsListViewState extends State<BListView> {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: widget.scrollDirection ?? Axis.vertical,
      controller: scrollController,
      children: widget.children,
    );
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  void initState() {
    super.initState();
    scrollController.addListener(scrollListener);
  }

  void scrollListener() async {
    if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      if (widget.onScrollEnded != null) {
        widget.onScrollEnded!();
      }
    }
  }
}

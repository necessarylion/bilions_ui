part of bilions_ui;

class BilionsTable extends StatelessWidget {
  final List<Widget> header;
  final List<List<Widget>> body;
  final double? bodyHeight;
  final String variant;
  final double radius;
  final double gap;
  final List<double?>? widths;

  const BilionsTable({
    super.key,
    this.variant = 'primary',
    this.bodyHeight,
    required this.header,
    required this.body,
    this.radius = 6,
    // column width
    this.widths,
    this.gap = 4,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      child: Table(
        columnWidths: getWidths(),
        children: [
          TableRow(
            children: [
              ...header
                  .mapIndexed(
                    (e, i) => Container(
                      decoration: BoxDecoration(
                        color: BilionsTheme.getLightColor(variant),
                        borderRadius: getBorderRadius(i),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: e,
                    ),
                  )
                  .toList(),
            ],
          ),
          ...body.mapIndexed(
            (b, i) {
              return TableRow(
                children: [
                  ...b
                      .mapIndexed(
                        (e, i) => TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Container(
                            height: bodyHeight ?? 48,
                            padding: EdgeInsets.only(top: gap),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: getBorderRadius(i),
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: double.infinity,
                                    child: e,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ],
              );
            },
          ).toList(),
        ],
      ),
    );
  }

  BorderRadius getBorderRadius(i) {
    return BorderRadius.only(
      topLeft: i == 0 ? const Radius.circular(5) : const Radius.circular(0),
      bottomLeft: i == 0 ? const Radius.circular(5) : const Radius.circular(0),
      topRight: header.length == i + 1
          ? const Radius.circular(5)
          : const Radius.circular(0),
      bottomRight: header.length == i + 1
          ? const Radius.circular(5)
          : const Radius.circular(0),
    );
  }

  Map<int, TableColumnWidth>? getWidths() {
    if (widths != null) {
      Map<int, TableColumnWidth>? newWidths = {};

      widths?.asMap().forEach((index, value) {
        if (value != null) newWidths[index] = FractionColumnWidth(value / 100);
      });
      return newWidths;
    }
    return null;
  }
}

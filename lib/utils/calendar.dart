part of bilions_ui;

openCalendar(
  BuildContext context, {
  required Function onDateChanged,
  String? initialDate,
  required String variant,
}) async {
  final DateTime? result = await showDatePicker(
    context: context,
    firstDate: DateTime(1700),
    lastDate: DateTime(2300),
    initialDate: initialDate != null && initialDate.isNotEmpty
        ? moment(initialDate).parse()
        : now(),
    builder: (BuildContext context, Widget? child) {
      return Theme(
        data: ThemeData().copyWith(
          colorScheme: ThemeData().colorScheme.copyWith(
                primary: BilionsTheme.getColor(variant),
              ),
        ),
        child: child!,
      );
    },
  );
  if (result != null) {
    onDateChanged(result);
  }
}

openRangePicker(
  BuildContext context, {
  required Function onDateChanged,
  String? startDate,
  String? endDate,
  required String variant,
}) async {
  final DateTimeRange? result = await showDateRangePicker(
    context: context,
    firstDate: DateTime(1900),
    lastDate: DateTime(2300),
    initialDateRange: DateTimeRange(
      start: startDate != null && startDate.isNotEmpty
          ? moment(startDate).parse()
          : now(),
      end: endDate != null && endDate.isNotEmpty
          ? moment(endDate).parse()
          : now(),
    ),
    saveText: 'SELECT',
    builder: (BuildContext context, Widget? child) {
      return Theme(
        data: ThemeData().copyWith(
          colorScheme: ThemeData().colorScheme.copyWith(
                primary: BilionsTheme.getColor(variant),
              ),
        ),
        child: child!,
      );
    },
  );
  if (result != null) {
    onDateChanged(result.start, result.end);
  }
}

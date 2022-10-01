part of bilions_ui;

openCalendar(
  BuildContext context, {
  required Function onDateChanged,
  String? initialDate,
}) async {
  final DateTime? result = await showDatePicker(
    context: context,
    firstDate: DateTime(2000),
    lastDate: DateTime(2200),
    initialDate: initialDate != null && initialDate.isNotEmpty
        ? moment(initialDate).parse()
        : now(),
    builder: (BuildContext context, Widget? child) {
      return Theme(
        data: ThemeData().copyWith(
          colorScheme: ThemeData().colorScheme.copyWith(
                primary: AppColors.primary,
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
}) async {
  final DateTimeRange? result = await showDateRangePicker(
    context: context,
    firstDate: DateTime(2000),
    lastDate: DateTime(2200),
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
                primary: AppColors.primary,
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

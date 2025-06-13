part of bilions_ui;

class BCalendar {
  static openDatePicker({
    BuildContext? context,
    required Function onDateChanged,
    String? initialDate,
    BVariant variant = BVariant.primary,
    double borderRadius = 5,
  }) async {
    final DateTime? result = await showDatePicker(
      context: context ?? getCurrentContext(),
      firstDate: DateTime(1700),
      lastDate: DateTime(2300),
      initialDate: initialDate != null && initialDate.isNotEmpty
          ? moment(initialDate).parse()
          : now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData().copyWith(
            datePickerTheme: DatePickerThemeData(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  borderRadius,
                ), // Set border radius to 0
              ),
            ),
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

  static openDateRangePicker({
    BuildContext? context,
    required Function onDateChanged,
    String? startDate,
    String? endDate,
    BVariant variant = BVariant.primary,
    String saveText = 'SELECT',
  }) async {
    final DateTimeRange? result = await showDateRangePicker(
      context: context ?? getCurrentContext(),
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
      saveText: saveText,
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
}

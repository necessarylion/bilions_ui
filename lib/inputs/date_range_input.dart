part of bilions_ui;

class BDateRangePicker extends StatefulWidget {
  final String label;
  final BVariant variant;
  final Widget? suffixIcon;
  final Color? labelColor;
  final Color? textColor;
  final Widget? prefixIcon;
  final List<String>? initialValue;
  final Function(List<String>) onChanged;
  final double borderRadius;
  final String? placeholder;
  final Color? placeholderColor;

  const BDateRangePicker({
    Key? key,
    required this.label,
    this.textColor,
    this.variant = BVariant.primary,
    this.labelColor,
    this.prefixIcon,
    this.initialValue = const [],
    required this.onChanged,
    this.suffixIcon,
    this.borderRadius = 5,
    this.placeholder,
    this.placeholderColor,
  }) : super(key: key);

  @override
  State<BDateRangePicker> createState() => _BDateRangePickerState();
}

class _BDateRangePickerState extends State<BDateRangePicker> {
  final TextEditingController controller = TextEditingController();

  String? startDate;
  String? endDate;

  @override
  Widget build(BuildContext context) {
    return BTextInput(
      label: widget.label,
      initialValue: controller.text,
      controller: controller,
      textColor: widget.textColor,
      prefixIcon: widget.prefixIcon ??
          Icon(
            Icons.calendar_month,
            color: BilionsTheme.getColor(widget.variant),
          ),
      suffixIcon: widget.suffixIcon,
      placeholder: widget.placeholder,
      placeholderColor: widget.placeholderColor,
      borderRadius: widget.borderRadius,
      variant: widget.variant,
      readOnly: true,
      onTab: () {
        BCalendar.openDateRangePicker(
          context: context,
          startDate: startDate,
          endDate: endDate,
          onDateChanged: (start, end) {
            String startDateString = dateToString(start);
            String endDateString = dateToString(end);
            controller.text = '$startDateString - $endDateString';
            setState(() {
              startDate = dateToString(start, format: 'yyyy-MM-dd HH:mm:ss');
              endDate = dateToString(end, format: 'yyyy-MM-dd HH:mm:ss');
            });
            widget.onChanged([
              dateToString(start, format: 'yyyy-MM-dd HH:mm:ss'),
              dateToString(end, format: 'yyyy-MM-dd HH:mm:ss'),
            ]);
          },
          variant: widget.variant,
        );
      },
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    String? sDate = widget.initialValue?[0];
    String? eDate = widget.initialValue?[1];

    if (sDate != null && eDate != null) {
      DateTime start = moment(sDate).parse();
      DateTime end = moment(eDate).parse();

      setState(() {
        startDate = dateToString(start, format: 'yyyy-MM-dd HH:mm:ss');
        endDate = dateToString(end, format: 'yyyy-MM-dd HH:mm:ss');
      });

      String startDateString = dateToString(start);
      String endDateString = dateToString(end);
      controller.text = '$startDateString - $endDateString';
    }

    super.initState();
  }
}

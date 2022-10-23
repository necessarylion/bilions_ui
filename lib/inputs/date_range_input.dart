part of bilions_ui;

class BilionsDateRangePicker extends StatefulWidget {
  final String label;
  final String variant;
  final Widget? suffixIcon;
  final Color? labelColor;
  final Color? textColor;
  final Widget? prefixIcon;
  final String? initialStartDate;
  final String? initialEndDate;
  final Function(String, String) onChanged;
  const BilionsDateRangePicker({
    Key? key,
    required this.label,
    this.textColor,
    this.variant = 'primary',
    this.labelColor,
    this.prefixIcon,
    this.initialEndDate,
    this.initialStartDate,
    required this.onChanged,
    this.suffixIcon,
  }) : super(key: key);

  @override
  State<BilionsDateRangePicker> createState() => _BilionsDateRangePickerState();
}

class _BilionsDateRangePickerState extends State<BilionsDateRangePicker> {
  final TextEditingController txt = TextEditingController();

  String? startDate;
  String? endDate;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: txt,
      onTap: () {
        openRangePicker(
          context,
          startDate: startDate,
          endDate: endDate,
          onDateChanged: (start, end) {
            String startDateString = dateToString(start);
            String endDateString = dateToString(end);
            txt.text = '$startDateString - $endDateString';
            setState(() {
              startDate = dateToString(start, format: 'yyyy-MM-dd HH:mm:ss');
              endDate = dateToString(end, format: 'yyyy-MM-dd HH:mm:ss');
            });
            widget.onChanged(
              dateToString(start, format: 'yyyy-MM-dd HH:mm:ss'),
              dateToString(end, format: 'yyyy-MM-dd HH:mm:ss'),
            );
          },
          variant: widget.variant,
        );
      },
      readOnly: true,
      autocorrect: false,
      enableSuggestions: false,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: BilionsTheme.getColor(widget.variant)),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: BilionsTheme.getColor(widget.variant),
          ),
        ),
        prefixIcon: widget.prefixIcon ??
            Icon(
              Icons.calendar_month,
              color: widget.textColor ?? BilionsTheme.getColor(widget.variant),
            ),
        suffixIcon: widget.suffixIcon,
        filled: true,
        fillColor: BilionsTheme.getLightColor(widget.variant),
        labelText: widget.label,
        labelStyle: TextStyle(
          color: widget.labelColor ?? BilionsTheme.getColor(widget.variant),
        ),
      ),
      style: TextStyle(
        color: widget.textColor ?? BilionsColors.black,
      ),
    );
  }

  @override
  void dispose() {
    txt.dispose();
    super.dispose();
  }

  @override
  void initState() {
    if (widget.initialStartDate != null && widget.initialEndDate != null) {
      DateTime start = moment(widget.initialStartDate!).parse();
      DateTime end = moment(widget.initialEndDate!).parse();

      setState(() {
        startDate = dateToString(start, format: 'yyyy-MM-dd HH:mm:ss');
        endDate = dateToString(end, format: 'yyyy-MM-dd HH:mm:ss');
      });

      String startDateString = dateToString(start);
      String endDateString = dateToString(end);
      txt.text = '$startDateString - $endDateString';
    }

    super.initState();
  }
}

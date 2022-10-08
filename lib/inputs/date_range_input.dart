part of bilions_ui;

class BilionsDateRangePicker extends StatefulWidget {
  final String label;
  final Widget? suffixIcon;
  final Function(String, String) onChanged;
  const BilionsDateRangePicker({
    Key? key,
    required this.label,
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
        );
      },
      readOnly: true,
      autocorrect: false,
      enableSuggestions: false,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: BilionsColors.primary),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: BilionsColors.primary,
          ),
        ),
        prefixIcon: Icon(
          Icons.calendar_month,
          color: BilionsColors.primary,
        ),
        suffixIcon: widget.suffixIcon,
        filled: true,
        fillColor: BilionsColors.primaryLight,
        labelText: widget.label,
        labelStyle: TextStyle(color: BilionsColors.primary),
      ),
    );
  }

  @override
  void dispose() {
    txt.dispose();
    super.dispose();
  }
}

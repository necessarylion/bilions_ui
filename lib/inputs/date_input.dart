part of bilions_ui;

class BilionsDatePicker extends StatefulWidget {
  final String label;
  final String variant;
  final Widget? suffixIcon;
  final Function(String) onChanged;
  const BilionsDatePicker({
    Key? key,
    required this.label,
    required this.onChanged,
    this.variant = 'primary',
    this.suffixIcon,
  }) : super(key: key);

  @override
  State<BilionsDatePicker> createState() => _BilionsDatePickerState();
}

class _BilionsDatePickerState extends State<BilionsDatePicker> {
  final TextEditingController txt = TextEditingController();

  String? date;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: txt,
      onTap: () {
        openCalendar(
          context,
          initialDate: date,
          onDateChanged: (result) {
            txt.text = dateToString(result);
            String formattedDateString =
                dateToString(result, format: 'yyyy-MM-dd HH:mm:ss');
            setState(() {
              date = formattedDateString;
            });
            widget.onChanged(formattedDateString);
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
        prefixIcon: Icon(
          Icons.calendar_month,
          color: BilionsTheme.getColor(widget.variant),
        ),
        suffixIcon: widget.suffixIcon,
        filled: true,
        fillColor: BilionsTheme.getLightColor(widget.variant),
        labelText: widget.label,
        labelStyle: TextStyle(color: BilionsTheme.getColor(widget.variant)),
      ),
    );
  }

  @override
  void dispose() {
    txt.dispose();
    super.dispose();
  }
}

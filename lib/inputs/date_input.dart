part of bilions_ui;

class BilionsDatePicker extends StatefulWidget {
  final String label;
  final String variant;
  final Widget? suffixIcon;
  final Color? labelColor;
  final Color? textColor;
  final Function(String) onChanged;
  final Widget? prefixIcon;
  final String? initialValue;
  const BilionsDatePicker({
    Key? key,
    required this.label,
    required this.onChanged,
    this.textColor,
    this.prefixIcon,
    this.initialValue,
    this.variant = 'primary',
    this.labelColor,
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
        floatingLabelBehavior: FloatingLabelBehavior.always,
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
    if (widget.initialValue != null) {
      DateTime initialDate = moment(widget.initialValue!).parse();
      txt.text = dateToString(initialDate);
      String formattedDateString =
          dateToString(initialDate, format: 'yyyy-MM-dd HH:mm:ss');
      setState(() {
        date = formattedDateString;
      });
    }
    super.initState();
  }
}

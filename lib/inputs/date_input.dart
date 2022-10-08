part of bilions_ui;

class BilionsDatePicker extends StatefulWidget {
  final String label;
  final Widget? suffixIcon;
  final Function(String) onChanged;
  const BilionsDatePicker({
    Key? key,
    required this.label,
    required this.onChanged,
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

part of bilions_ui;

class DateInput extends StatefulWidget {
  final String label;
  final Widget? suffixIcon;
  final Function(String) onChanged;
  const DateInput({
    Key? key,
    required this.label,
    required this.onChanged,
    this.suffixIcon,
  }) : super(key: key);

  @override
  State<DateInput> createState() => _DateInputState();
}

class _DateInputState extends State<DateInput> {
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
          borderSide: BorderSide(color: AppColors.primary),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.primary,
          ),
        ),
        prefixIcon: Icon(
          Icons.calendar_month,
          color: AppColors.primary,
        ),
        suffixIcon: widget.suffixIcon,
        filled: true,
        fillColor: AppColors.primaryLight,
        labelText: widget.label,
        labelStyle: TextStyle(color: AppColors.primary),
      ),
    );
  }

  @override
  void dispose() {
    txt.dispose();
    super.dispose();
  }
}

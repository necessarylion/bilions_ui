part of bilions_ui;

class BDatePicker extends StatefulWidget {
  final String label;
  final BVariant variant;
  final Widget? suffixIcon;
  final Color? labelColor;
  final Color? textColor;
  final Color? placeholderColor;
  final Function(String) onChanged;
  final Widget? prefixIcon;
  final String? initialValue;
  final double borderRadius;
  final String? placeholder;

  const BDatePicker({
    Key? key,
    required this.label,
    required this.onChanged,
    this.textColor,
    this.placeholderColor,
    this.prefixIcon,
    this.placeholder,
    this.initialValue,
    this.variant = BVariant.primary,
    this.labelColor,
    this.suffixIcon,
    this.borderRadius = 5,
  }) : super(key: key);

  @override
  State<BDatePicker> createState() => _BDatePickerState();
}

class _BDatePickerState extends State<BDatePicker> {
  final TextEditingController controller = TextEditingController();

  String? date;

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
        BCalendar.openDatePicker(
          context: context,
          initialDate: date,
          onDateChanged: (result) {
            controller.text = dateToString(result);
            String formattedDateString =
                dateToString(result, format: 'yyyy-MM-dd HH:mm:ss');
            setState(() => date = formattedDateString);
            widget.onChanged(formattedDateString);
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
    if (widget.initialValue != null && widget.initialValue!.isNotEmpty) {
      DateTime initialDate = moment(widget.initialValue!).parse();
      controller.text = dateToString(initialDate);
      String formattedDateString =
          dateToString(initialDate, format: 'yyyy-MM-dd HH:mm:ss');
      setState(() => date = formattedDateString);
    }
    super.initState();
  }
}

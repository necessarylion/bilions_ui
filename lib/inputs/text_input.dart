part of bilions_ui;

class BilionsTextInput extends StatefulWidget {
  final String label;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final String? initialValue;
  final Function(String)? onChanged;
  final String? variant;
  final Color? textColor;
  final Color? labelColor;
  final String? placeholder;
  final Function()? onTab;
  final int? maxLines;
  final bool readOnly;
  const BilionsTextInput({
    Key? key,
    required this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
    this.initialValue,
    this.onChanged,
    this.placeholder,
    this.maxLines,
    this.textColor,
    this.variant = 'primary',
    this.labelColor,
    this.onTab,
    this.readOnly = false,
  }) : super(key: key);

  @override
  State<BilionsTextInput> createState() => _BilionsTextInputState();
}

class _BilionsTextInputState extends State<BilionsTextInput> {
  TextEditingController? _controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: widget.readOnly,
      onTap: widget.onTab,
      controller: _controller,
      autocorrect: false,
      maxLines: widget.maxLines,
      enableSuggestions: false,
      style: TextStyle(
        color: widget.textColor ?? BilionsColors.black,
      ),
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: BilionsTheme.getColor(widget.variant)),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: BilionsTheme.getColor(widget.variant),
          ),
        ),
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon,
        filled: true,
        hintText: widget.placeholder,
        hintStyle: TextStyle(
          color: widget.labelColor ?? BilionsTheme.getColor(widget.variant),
        ),
        fillColor: BilionsTheme.getLightColor(widget.variant),
        labelText: widget.label,
        labelStyle: TextStyle(
          color: widget.labelColor ?? BilionsTheme.getColor(widget.variant),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  @override
  void dispose() {
    if (_controller != null) {
      _controller?.dispose();
    }
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    if (widget.controller != null) {
      setState(() {
        _controller = widget.controller;
      });
    } else {
      setState(() {
        _controller = TextEditingController();
      });
    }
    _controller?.text = widget.initialValue ?? '';
    _controller?.addListener(() {
      if (widget.onChanged != null) {
        widget.onChanged!(_controller?.text ?? '');
      }
    });
  }
}

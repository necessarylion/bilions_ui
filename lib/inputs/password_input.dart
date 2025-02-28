part of bilions_ui;

class BPasswordInput extends StatefulWidget {
  final String label;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final String? initialValue;
  final Function(String)? onChanged;
  final BVariant? variant;
  final Color? labelColor;
  final Color? textColor;
  final String? placeholder;
  final Color? placeholderColor;
  final double borderRadius;

  const BPasswordInput({
    Key? key,
    required this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.placeholder,
    this.controller,
    this.initialValue,
    this.onChanged,
    this.textColor,
    this.variant = BVariant.primary,
    this.labelColor,
    this.placeholderColor,
    this.borderRadius = 5,
  }) : super(key: key);

  @override
  State<BPasswordInput> createState() => _BPasswordInputState();
}

class _BPasswordInputState extends State<BPasswordInput> {
  TextEditingController? _controller;

  bool secure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      autocorrect: false,
      enableSuggestions: false,
      obscureText: secure,
      decoration: InputDecoration(
        hintText: widget.placeholder,
        hintStyle: TextStyle(
          color: widget.placeholderColor ?? BColors.secondary,
        ),
        focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(widget.borderRadius),
            topRight: Radius.circular(widget.borderRadius),
          ),
          borderSide: BorderSide(color: BilionsTheme.getColor(widget.variant)),
        ),
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(widget.borderRadius),
            topRight: Radius.circular(widget.borderRadius),
          ),
          borderSide: BorderSide(
            color: BilionsTheme.getColor(widget.variant),
          ),
        ),
        prefixIcon: widget.prefixIcon ??
            Icon(
              Icons.lock,
              color: BilionsTheme.getColor(widget.variant),
            ),
        suffixIcon: widget.suffixIcon ??
            IconButton(
              onPressed: () => {setState(() => secure = !secure)},
              icon: Icon(
                !secure ? Icons.visibility : Icons.visibility_off,
                color: BilionsTheme.getColor(widget.variant),
              ),
            ),
        filled: true,
        fillColor: BilionsTheme.getLightColor(widget.variant),
        labelText: widget.label,
        labelStyle: TextStyle(
          color: widget.labelColor ?? BilionsTheme.getColor(widget.variant),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      style: TextStyle(
        color: widget.textColor ?? BColors.black,
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

part of bilions_ui;

class BilionsPasswordInput extends StatefulWidget {
  final String label;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final String? initialValue;
  final Function(String)? onChanged;
  final String? variant;
  const BilionsPasswordInput({
    Key? key,
    required this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
    this.initialValue,
    this.onChanged,
    this.variant = 'primary',
  }) : super(key: key);

  @override
  State<BilionsPasswordInput> createState() => _BilionsPasswordInputState();
}

class _BilionsPasswordInputState extends State<BilionsPasswordInput> {
  TextEditingController? _controller;

  bool secure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      autocorrect: false,
      enableSuggestions: false,
      obscureText: secure,
      initialValue: widget.initialValue,
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
              Icons.lock,
              color: BilionsTheme.getColor(widget.variant),
            ),
        suffixIcon: widget.suffixIcon ??
            IconButton(
              onPressed: () => {
                setState(() => {secure = !secure})
              },
              icon: Icon(
                !secure ? Icons.visibility : Icons.visibility_off,
                color: BilionsTheme.getColor(widget.variant),
              ),
            ),
        filled: true,
        fillColor: BilionsTheme.getLightColor(widget.variant),
        labelText: widget.label,
        labelStyle: TextStyle(
          color: BilionsTheme.getColor(widget.variant),
        ),
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
    _controller?.addListener(() {
      if (widget.onChanged != null) {
        widget.onChanged!(_controller?.text ?? '');
      }
    });
  }
}

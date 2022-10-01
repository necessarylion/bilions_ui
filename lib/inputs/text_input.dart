part of bilions_ui;

class TextInput extends StatelessWidget {
  final String label;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final String? initialValue;
  const TextInput({
    Key? key,
    required this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
    this.initialValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autocorrect: false,
      enableSuggestions: false,
      initialValue: initialValue,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.primary,
          ),
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: AppColors.primaryLight,
        labelText: label,
        labelStyle: TextStyle(color: AppColors.primary),
      ),
    );
  }
}

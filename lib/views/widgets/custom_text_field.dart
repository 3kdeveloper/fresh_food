import '../../utils/exports.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final String? Function(String? value)? validator;

  const CustomTextField({
    Key? key,
    required this.controller,
    this.hintText,
    this.keyboardType,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = const TextStyle(
      fontSize: 16,
      fontFamily: 'RobotoMono-Regular',
    );
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: TextFormField(
        cursorColor: AppTheme.kPrimaryColor,
        keyboardType: keyboardType,
        obscureText: obscureText!,
        style: textStyle,
        decoration: InputDecoration(
          hintText: hintText ?? '',
          hintStyle: textStyle,
          prefixIcon: Icon(
            prefixIcon,
            color: AppTheme.kPrimaryColor,
          ),
          suffixIcon: suffixIcon,
          fillColor: AppTheme.kTextFieldColor.withOpacity(0.8),
          filled: true,
          border: InputBorder.none,
        ),
        validator: validator,
      ),
    );
  }
}

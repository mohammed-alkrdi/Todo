import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldInput extends StatelessWidget {
  final String hint;
  final Color textColor;
  final Color color;
  final IconData icon;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final bool obscureText;
  Function(String? value) onSaved;
  String? Function(String? value) validator;

  TextFieldInput({Key? key,
    required this.hint,
    required this.textColor,
    required this.color,
    required this.icon,
    required this.onSaved,
    required this.validator,
    required this.inputType,
    required this.inputAction, this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 10,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: GoogleFonts.assistant(color: textColor),
              prefixIcon: Icon(
                icon,
                color: color,
              ),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
            cursorColor: Colors.black,
            keyboardType: inputType,
            obscureText: obscureText,
            onChanged: onSaved,
            validator: validator,
          ),
        ),
      ),
    );
  }
}

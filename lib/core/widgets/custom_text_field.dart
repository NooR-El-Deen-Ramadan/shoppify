import 'package:flutter/material.dart';
import 'package:shoppify/core/utils/app_colors.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
   CustomTextField({
    super.key,
    this.labelText,
    this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.onChanged,
    this.obsecureText = false,
    this.validator,
    this.enableSuggestions,
    this.autocorrect,
    this.keyboardType,
    this.autofillHints,
    required this.controller, required this.isPassword,
  });
  final bool isPassword;
  final TextEditingController controller;
  final String? labelText;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
 bool obsecureText;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool? enableSuggestions;
  final bool? autocorrect;
  final TextInputType? keyboardType;
  final Iterable<String>? autofillHints;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obsecureText,
      enableSuggestions: widget.enableSuggestions ?? !widget.obsecureText,
      autocorrect: widget.autocorrect ?? !widget.obsecureText,
      keyboardType: widget.keyboardType,
      autofillHints: widget.autofillHints,
      onChanged: widget.onChanged,
      validator: widget.validator,
      controller: widget.controller,
      decoration: InputDecoration(
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(20),
        ),

        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(20),
        ),

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(20),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(20),
        ),

        label: Text(widget.labelText ?? ""),
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: () {
                  setState(() {
                   widget.obsecureText=!widget.obsecureText;
                  });
                },
                child: Icon(
                  widget.obsecureText ? Icons.visibility : Icons.visibility_off,
                ),
              )
            : null,
        hintText: widget.hintText,

        hintStyle: TextStyle(color: AppColors.darkColor, fontSize: 20),
      ),
    );
  }
}

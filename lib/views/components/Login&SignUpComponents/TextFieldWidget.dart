import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String? labelText;
  final icon;
  final bool obscureText;
  final suffixIcon;
  final bool enabled;
  final FormFieldValidator<String>? validator;
   TextFieldWidget(
      {required this.labelText,
      required this.icon,
      this.obscureText = false,
      this.enabled = true,
      this.suffixIcon,
      this.validator,
      });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      validator: validator,
      enabled: enabled,
      style: const TextStyle(fontSize: 14, color: Colors.black),
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color:  Color.fromARGB(255, 132, 132, 132)),
        filled: true,
        
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none),
    
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Color.fromARGB(255, 132, 132, 132))),
        prefixIcon: Icon(
          icon,
          size: 20,
          color: Colors.black,
        ),
        suffixIcon: Icon(
          suffixIcon,
          size: 20,
          color:  Color.fromARGB(255, 132, 132, 132)
        ),
      ),
    );
  }
}

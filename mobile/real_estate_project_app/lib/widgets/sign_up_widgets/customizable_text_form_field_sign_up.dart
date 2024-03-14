import 'package:flutter/material.dart';

class CustomizableTextFormFieldSignUp extends StatelessWidget {
  const CustomizableTextFormFieldSignUp(
      {super.key,
      required this.hintString,
      required this.inputCardName,
      required this.startIcon,
      required this.keyboardtype,
      this.endIcon});
  final String hintString;
  final String inputCardName;
  final IconData startIcon;
  final double radiusvalueOfField = 20;
  final TextInputType keyboardtype;
  final IconData? endIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        keyboardType: keyboardtype,
        decoration: InputDecoration(
          prefixIcon: Icon(startIcon),
          suffixIcon: Icon(endIcon),
          labelText: inputCardName,
          hintText: hintString,
          hintStyle: const TextStyle(fontStyle: FontStyle.italic),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(radiusvalueOfField),
            ),
          ),
        ),
      ),
    );
  }
}

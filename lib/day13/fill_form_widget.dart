import 'package:flutter/material.dart';

class fillForm extends StatelessWidget {
  const fillForm({
    super.key, required this.textFill, this.click,  this.isPassword = false, this.isVisibility = false
  });
  final String textFill;
  final void Function()? click;
  final bool isPassword;
  final bool isVisibility;


  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isVisibility,
      obscuringCharacter: "*",
      decoration: 
      InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: textFill,
        suffixIcon: 
        isPassword?
        IconButton(
          onPressed:
            click,
          icon: Icon(isVisibility ? Icons.visibility_off : Icons.visibility ),
        ): null,
      ),
    );
  }
}
import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  
  final TextInputType textInputType;
  const TextFieldInput({
    Key? key,
    required this.textEditingController,
    this.isPass = false,
    required this.hintText,
    required this.textInputType,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context,));
    return TextField(
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: 'Manrope',
        color: Color.fromRGBO(0, 0, 0, 1),
      ),
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Color.fromRGBO(116, 116, 116, 1)),
        border: inputBorder,
        focusedBorder: inputBorder,
        enabledBorder: inputBorder,
        filled: true,
        fillColor: const Color.fromRGBO(238, 238, 238, 1),
        contentPadding: const EdgeInsets.all(8),
     
      ),
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}

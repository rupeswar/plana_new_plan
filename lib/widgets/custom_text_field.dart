import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final Widget? suffixIcon;
  final int? maxLines;
  final int? minLines;

  const CustomTextField({
    Key? key,
    this.hintText,
    this.suffixIcon,
    this.maxLines,
    this.minLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(color: Color(0x00000000), blurRadius: 11),
        ],
      ),
      child: TextFormField(
        maxLines: maxLines,
        minLines: minLines,
        decoration: InputDecoration(
            // border: InputBorder.none,
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            hintText: hintText,
            hintMaxLines: 2,
            alignLabelWithHint: true,
            hintStyle: const TextStyle(
              color: Color.fromRGBO(216, 216, 216, 1),
            ),
            floatingLabelStyle: const TextStyle(
              color: Color.fromRGBO(216, 216, 216, 1),
            ),
            filled: true,
            contentPadding: const EdgeInsets.all(16.0),
            suffixIcon: suffixIcon),
      ),
    );
  }
}

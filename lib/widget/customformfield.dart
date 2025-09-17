import 'package:flutter/material.dart';

class Customformfield extends StatelessWidget {
  const Customformfield({
    super.key,
    required this.hintText,
    required this.label,
    required this.validator,
  });
  final String hintText;
  final String label;
  final FormFieldValidator<String> validator;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 18,
            fontFamily: "Suwannaphum",
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.start,
        ),
        TextFormField(
          validator: validator,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey),
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}

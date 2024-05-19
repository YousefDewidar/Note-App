import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String hint;
  final int maxLines;
  const InputText(
      {super.key, required this.hint, this.maxLines = 1, this.onSaved});

  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.deepPurple, fontSize: 18),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
    );
  }
}

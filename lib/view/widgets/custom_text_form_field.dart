import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.controller,
    required this.hint,
    this.maxLength,
    this.maxLines,
    required this.validate,
  });
  final TextEditingController controller;
  final String hint;
  final int? maxLength;
  final int? maxLines;
  final String? Function(String?)? validate;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      controller: controller,
      maxLength: maxLength,
      maxLines: maxLines,
      validator: validate,
      decoration: InputDecoration(
        counterStyle: const TextStyle(color: Colors.grey, fontSize: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        filled: true,
        fillColor: Colors.grey,
        hintText: hint,
        hintStyle: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        contentPadding: const EdgeInsets.all(8),
      ),
      style: const TextStyle(
        color: Colors.black,
      ),
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class WTextFIeld extends StatefulWidget {
  final String label;
  final IconData? suffixIcon;
  final IconData? preffixIcon;
  final TextEditingController controller;
  final int? maxLength;
  final String? Function(String?)? validator;

  const WTextFIeld({
    super.key,
    this.suffixIcon,
    this.preffixIcon,
    this.maxLength,
    required this.label,
    required this.controller,
    required this.validator,
  });

  @override
  State<WTextFIeld> createState() => _WTextFIeldState();
}

class _WTextFIeldState extends State<WTextFIeld> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      maxLength: 20,
      decoration: InputDecoration(
          labelText: widget.label,
          labelStyle: const TextStyle(
            color: Colors.blueGrey,
          ),
          suffixIcon: Icon(widget.suffixIcon),
          prefixIcon: Icon(widget.preffixIcon),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blueGrey,
            ),
          )),
      onChanged: (value) {},
    );
  }
}

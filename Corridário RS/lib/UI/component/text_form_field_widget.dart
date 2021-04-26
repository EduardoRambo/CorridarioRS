import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String _hintText;
  final _controller;
  final _validator;
  final _keyboardType;

  TextFormFieldWidget(
      this._hintText, this._controller, this._validator, this._keyboardType);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      decoration: InputDecoration(
        hintText: _hintText,
      ),
      validator: _validator,
      keyboardType: _keyboardType,
    );
  }
}

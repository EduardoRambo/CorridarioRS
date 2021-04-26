import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String _hintText;
  final Icon _icon;
  final _controller;
  final _maxLength;
  final _validator;

  TextFieldWidget(this._hintText, this._icon, this._controller, this._maxLength,
      this._validator);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      decoration: InputDecoration(
        hintText: _hintText,
        icon: _icon,
      ),
      maxLength: _maxLength,
      validator: _validator,
    );
  }
}

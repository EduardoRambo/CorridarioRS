import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final String _textButton;
  final _press;

  const TextButtonWidget(this._textButton, this._press);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: _press,
        child: Text(
          _textButton,
        ),
      ),
    );
  }
}

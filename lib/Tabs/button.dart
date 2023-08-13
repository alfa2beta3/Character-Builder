import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final Color borderColor;
  final double borderRadius;
  final double textInset;
  final Color textColor;
  final String text;
  const Button({Key? key,
    this.borderColor = Colors.white,
    this.borderRadius = 20,
    this.textInset = 8,
    this.textColor = Colors.white,
    required this.text,
  }) : super(key: key);

  @override
  State<Button> createState() => _ButtonState();

}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: widget.borderColor,
          ),
          borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius)),
        ),
        child: Padding(
          padding: EdgeInsets.all(widget.textInset),
          child: Text(widget.text,
            style: TextStyle(
              color: widget.textColor,
            ),),
        ));
  }
}

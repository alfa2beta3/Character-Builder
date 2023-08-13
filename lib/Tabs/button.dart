import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final Color borderColor;
  final double borderRadius;
  final double leftInset;
  final double rightInset;
  final double topInset;
  final double downInset;
  final Color textColor;
  final String text;
  final double textSize;
  const Button({Key? key,
    this.borderColor = Colors.white,
    this.borderRadius = 20,
    this.leftInset = 16,
    this.rightInset = 16,
    this.topInset = 8,
    this.downInset =8,
    this.textColor = Colors.white,
    required this.text,
    this.textSize = 28,
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
          padding: EdgeInsets.only(left:widget.leftInset, right: widget.rightInset, top: widget.topInset, bottom: widget.downInset),
          child: Text(widget.text,
            style: TextStyle(
              color: widget.textColor,
              fontSize: widget.textSize,
            ),
          ),
        ));
  }
}

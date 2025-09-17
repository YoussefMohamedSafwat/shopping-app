import 'package:flutter/material.dart';

class Animatedbutton extends StatefulWidget {
  const Animatedbutton({
    super.key,
    required this.label,
    required this.onPressed,
    this.backgroundColor = Colors.white,
    this.labelColor = Colors.black,
    this.initialWidth = 150,
    this.initialheight = 40,
  });

  final String label;
  final void Function() onPressed;
  final Color? backgroundColor;
  final Color? labelColor;
  final double? initialWidth;
  final double? initialheight;

  @override
  State<Animatedbutton> createState() => _AnimatedbuttonState();
}

class _AnimatedbuttonState extends State<Animatedbutton> {
  bool on_hovering = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      width: on_hovering ? (widget.initialWidth! + 10) : widget.initialWidth,
      height: on_hovering ? (widget.initialheight! + 5) : widget.initialheight,
      child: ElevatedButton(
        onHover: (hover) {
          setState(() {
            on_hovering = hover;
          });
        },
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 1,
          backgroundColor: widget.backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            widget.label,
            style: TextStyle(fontSize: 18, color: widget.labelColor),
          ),
        ),
      ),
    );
  }
}

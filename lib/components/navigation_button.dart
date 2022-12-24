import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
   final Color color;
   final String text;
  final void Function() onPressed ;
  // ignore: use_key_in_widget_constructors
   const NavigationButton(
      {required this.color, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

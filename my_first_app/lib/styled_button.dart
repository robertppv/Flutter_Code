import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  const StyledButton({required this.child, required this.onPressed, super.key});

  final Widget child;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonal(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
          backgroundColor: const Color(0xFF795757),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)))),
      child: child,
    );
  }
}

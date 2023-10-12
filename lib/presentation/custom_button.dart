import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 5,
      backgroundColor: Colors.amber,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}

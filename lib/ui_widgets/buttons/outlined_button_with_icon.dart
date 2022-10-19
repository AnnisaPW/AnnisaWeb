import 'package:flutter/material.dart';

class ButtonOutlinedWithIcon extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function()? onClicked;
  const ButtonOutlinedWithIcon({
    Key? key,
    required this.text,
    required this.icon,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          width: 1.5,
          color: Colors.grey.withOpacity(0.3),
        ),
      ),
      child: Row(
        children: [
          Icon(icon),
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ],
      ),
      onPressed: onClicked,
    );
  }
}

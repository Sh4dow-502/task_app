import 'package:flutter/material.dart';

class ButtonFilter extends StatelessWidget {
  final bool active;
  final String text;
  final VoidCallback? onPress;
  const ButtonFilter({
    super.key,
    this.onPress,
    this.active = false,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.all(7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          //color: Color(0xff6158FF),
          border: Border.all(
            color: const Color(0xff6158FF),
            width: 2,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 13,
            color: active ? const Color(0xff6158FF) : null,
            //color: Colors.white,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final VoidCallback onTap;
  final String btnText;

  const CustomBtn({
    super.key,
    required this.onTap,
    required this.btnText,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.black,
        ),
        child: Center(
          child: Text(
            btnText,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class buildQuickAction extends StatelessWidget {
  final IconData icon;
  final String label;
  const buildQuickAction({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.deepPurple.withOpacity(0.1),
          child: Icon(
            icon,
            color: Colors.deepPurple,
            size: 30,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
          ),
        )
      ],
    );
  }
}

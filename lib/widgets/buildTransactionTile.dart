import 'package:flutter/material.dart';

class buildTransactionTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String amount;
  final bool isPositive;
  const buildTransactionTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.amount,
      required this.isPositive});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.deepPurple.withOpacity(0.1),
            child: Icon(
              isPositive ? Icons.arrow_upward : Icons.arrow_downward,
              color: isPositive ? Colors.green : Colors.red,
            ),
          ),
          title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(subtitle),
          trailing: Text(
            amount,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isPositive ? Colors.green : Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}

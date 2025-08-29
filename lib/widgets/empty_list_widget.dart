import 'package:flutter/material.dart';

class EmptyListWidget extends StatelessWidget {
  final String message;
  final IconData icon;

  const EmptyListWidget({
    super.key,
    this.message = "No items found",
    this.icon = Icons.inbox,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 60, color: Colors.grey),
          const SizedBox(height: 16),
          Text(
            message,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

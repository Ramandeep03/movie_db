import 'package:flutter/material.dart';

class ErrorWidgetWithIcon extends StatelessWidget {
  final String message;
  final IconData icon;

  const ErrorWidgetWithIcon({
    super.key,
    this.message = "Something went wrong",
    this.icon = Icons.error_outline,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 60, color: Colors.redAccent),
          const SizedBox(height: 16),
          Text(
            message,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

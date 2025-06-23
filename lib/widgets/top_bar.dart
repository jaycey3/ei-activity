import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Icon(
                Icons.chevron_left,
                size: 30,
                color: Color(0xFF001B2F),
              ),
              Text(
                "Activity",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF001B2F),
                ),
              ),
            ],
          ),
          const Text(
            "17 Jun 2025",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xFF001B2F),
            ),
          ),
        ],
      ),
    );
  }
}
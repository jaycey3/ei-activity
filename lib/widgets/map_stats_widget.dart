import 'package:flutter/material.dart';

class MapStatsWidget extends StatelessWidget {
  final String title;
  final Color color;
  final IconData icon1;
  final String value1;
  final IconData? icon2;
  final String? value2;
  final IconData? icon3;
  final String? value3;
  final IconData? icon4;
  final String? value4;

  const MapStatsWidget({
    super.key,
    required this.title,
    required this.color,
    required this.icon1,
    required this.value1,
    this.icon2,
    this.value2,
    this.icon3,
    this.value3,
    this.icon4,
    this.value4,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.43,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontSize: 12, color: Colors.grey)),
          const SizedBox(height: 8),
          Container(
            width: MediaQuery.of(context).size.width * 0.1,
            height: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: color,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Icon(icon1, size: 24, color: const Color(0xFF001B2F)),
              const SizedBox(width: 8),
              Text(
                value1,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF001B2F),
                ),
              ),
            ],
          ),
          if (icon2 != null && value2 != null)
            Row(
              children: [
                Icon(icon2, size: 24, color: const Color(0xFF001B2F)),
                const SizedBox(width: 8),
                Text(
                  value2!,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF001B2F),
                  ),
                ),
              ],
            ),
          if (icon3 != null && value3 != null)
            Row(
              children: [
                Icon(icon3, size: 24, color: const Color(0xFF001B2F)),
                const SizedBox(width: 8),
                Text(
                  value3!,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF001B2F),
                  ),
                ),
              ],
            ),
          if (icon4 != null && value4 != null)
            Row(
              children: [
                Icon(icon4, size: 24, color: const Color(0xFF001B2F)),
                const SizedBox(width: 8),
                Text(
                  value4!,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF001B2F),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'stats_widget.dart';

class QuickStats extends StatelessWidget {
  const QuickStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Wrap(
          alignment: WrapAlignment.spaceBetween,
          spacing: MediaQuery.of(context).size.width * 0.04,
          runSpacing: 16,
          children: const [
            StatsWidget(icon: Icons.timer_outlined, value: "48m", label: "Duration"),
            StatsWidget(icon: Icons.place_outlined, value: "5.2 km", label: "Distance"),
            StatsWidget(icon: Icons.favorite_outline, value: "142 bpm", label: "Average Heart Rate"),
            StatsWidget(icon: Icons.speed_outlined, value: "15.2 km/h", label: "Average Speed"),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'map_stats_widget.dart';

class BpmTab extends StatelessWidget {
  const BpmTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), // pas aan naar wens
                  boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 6)],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("assets/bpm.png", fit: BoxFit.cover),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 20),

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Wrap(
            alignment: WrapAlignment.spaceEvenly,
            spacing: MediaQuery.of(context).size.width * 0.04,
            runSpacing: 16,
            children: [
              MapStatsWidget(
                title: "Lowest Heart Rate",
                color: Color(0xFF00BF63),
                icon1: Icons.favorite_outline,
                value1: "47 bpm",
                icon2: Icons.timer_outlined,
                value2: "0:16 min",
                icon3: Icons.place_outlined,
                value3: "90 m",
                icon4: Icons.speed_outlined,
                value4: "7 km/h",
              ),
              MapStatsWidget(
                title: "Highest Heart Rate",
                color: Color(0xFFFF5757),
                icon1: Icons.favorite_outline,
                value1: "148 bpm",
                icon2: Icons.timer_outlined,
                value2: "0:19 min",
                icon3: Icons.place_outlined,
                value3: "320 m",
                icon4: Icons.speed_outlined,
                value4: "28 km/h",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
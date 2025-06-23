import 'package:flutter/material.dart';
import 'map_stats_widget.dart';

class GaitsTab extends StatelessWidget {
  const GaitsTab({super.key});

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
                  child: Image.asset("assets/gaits.png", fit: BoxFit.cover),
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
              MapStatsWidget(title: "Walk", color: Color(0xFF2BE6DF), icon1: Icons.timer_outlined, value1: "1:23 min", icon2: Icons.place_outlined, value2: "240 m", icon3: Icons.favorite_outline, value3: "47 bpm", icon4: Icons.speed_outlined, value4: "7 km/h"),
              MapStatsWidget(title: "Trot", color: Color(0xFF1DBDBF), icon1: Icons.timer_outlined, value1: "0:58 min", icon2: Icons.place_outlined, value2: "370 m", icon3: Icons.favorite_outline, value3: "94 bpm", icon4: Icons.speed_outlined, value4: "13 km/h"),
              MapStatsWidget(title: "Canter", color: Color(0xFF147D9B), icon1: Icons.timer_outlined, value1: "0:45 min", icon2: Icons.place_outlined, value2: "500 m", icon3: Icons.favorite_outline, value3: "120 bpm", icon4: Icons.speed_outlined, value4: "15 km/h"),
              MapStatsWidget(title: "Gallop", color: Color(0xFF001B2F), icon1: Icons.timer_outlined, value1: "0:30 min", icon2: Icons.place_outlined, value2: "600 m", icon3: Icons.favorite_outline, value3: "150 bpm", icon4: Icons.speed_outlined, value4: "20 km/h"),
            ],
          ),
        ),
      ],
    );
  }
}
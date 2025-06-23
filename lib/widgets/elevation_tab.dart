import 'package:flutter/material.dart';
import 'map_stats_widget.dart';

class ElevationTab extends StatelessWidget {
  const ElevationTab({super.key});

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
                  child: Image.asset("assets/elevation.png", fit: BoxFit.cover),
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
                title: "Lowest Altitude",
                color: Color(0xFFC1FF72),
                icon1: Icons.arrow_downward_outlined,
                value1: "47 m",
                icon2: null,
                value2: null,
                icon3: null,
                value3: null,
                icon4: null,
                value4: null,
              ),
              MapStatsWidget(
                title: "Highest Altitude",
                color: Color(0xFF00BF63),
                icon1: Icons.arrow_upward_outlined,
                value1: "148 m",
                icon2: null,
                value2: null,
                icon3: null,
                value3: null,
                icon4: null,
                value4: null,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
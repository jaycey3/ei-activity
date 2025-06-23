import 'package:flutter/material.dart';
import 'widgets/tab_button.dart';
import 'widgets/top_bar.dart';
import 'widgets/quick_stats.dart';
import 'widgets/intensity.dart';
import 'widgets/workload.dart';
import 'widgets/gaits_tab.dart';
import 'widgets/bpm_tab.dart';
import 'widgets/elevation_tab.dart';

void main() {
  runApp(
    const MaterialApp(home: ActivityPage(), debugShowCheckedModeBanner: false),
  );
}

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  int selectedTabIndex = 0; // 0 = Gaits, 1 = Heart Rate, 2 = Elevation

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF4F3),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopBar(),
              QuickStats(),
              const SizedBox(height: 20),
              Intensity(),
              const SizedBox(height: 20),
              Workload(),
              const SizedBox(height: 20),
              _tabButtons(),
              const SizedBox(height: 20),
              _buildTabContent(),
            ],
          ),
        ),
      ),
    );
  }

  Padding _tabButtons() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TabButton(
            title: "Gaits",
            index: 0,
            icon: Icons.rocket_launch_outlined,
            isSelected: selectedTabIndex == 0,
            onTap: () {
              setState(() {
                selectedTabIndex = 0;
              });
            },
          ),
          TabButton(
            title: "Heart Rate",
            index: 1,
            icon: Icons.favorite_outline,
            isSelected: selectedTabIndex == 1,
            onTap: () {
              setState(() {
                selectedTabIndex = 1;
              });
            },
          ),
          TabButton(
            title: "Elevation",
            index: 2,
            icon: Icons.landscape_outlined,
            isSelected: selectedTabIndex == 2,
            onTap: () {
              setState(() {
                selectedTabIndex = 2;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildTabContent() {
    switch (selectedTabIndex) {
      case 0:
        return GaitsTab();
      case 1:
        return BpmTab();
      case 2:
        return ElevationTab();
      default:
        return Container();
    }
  }
}

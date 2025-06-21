import 'package:flutter/material.dart';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
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
            ),

            Center(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    spacing: MediaQuery.of(context).size.width * 0.04,
                    runSpacing: 16,
                    children: [
                      _stats(Icons.timer_outlined, "48m", "Duration"),
                      _stats(Icons.place_outlined, "5.2 km", "Distance"),
                      _stats(
                        Icons.favorite_outline,
                        "142 bpm",
                        "Average Heart Rate",
                      ),
                      _stats(
                        Icons.speed_outlined,
                        "15.2 km/h",
                        "Average Speed",
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[300]!),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Intensity of Activity",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Text(
                            "60%",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.bolt_outlined,
                            size: 24,
                            color: Color(0xFF001B2F),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: LinearProgressIndicator(
                              value: 0.6,
                              backgroundColor: Colors.grey[300],
                              color: Colors.orange,
                              minHeight: 10,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[300]!),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Workload",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Text(
                            "Sustaining",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 8),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.16,
                            height: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.grey[300],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.16,
                            height: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.cyanAccent,
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.16,
                            height: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.grey[300],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.16,
                            height: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.grey[300],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "ACWR",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                "0.8",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF001B2F),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Acute workload",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                "22",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF001B2F),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Chronic workload",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                "30",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF001B2F),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Tabs
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _tabButton("Gaits", 0, Icons.rocket_launch_outlined),
                  _tabButton("Heart Rate", 1, Icons.favorite_outline),
                  _tabButton("Elevation", 2, Icons.landscape_outlined),
                ],
              ),
            ),

            const SizedBox(height: 10),

            Expanded(child: _buildTabContent()),
          ],
        ),
      ),
    );
  }

  Widget _stats(IconData icon, String value, String label) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.43,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Icon(icon, size: 30, color: const Color(0xFF001B2F)),
          Text(
            value,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey)),
        ],
      ),
    );
  }

  Widget _tabButton(String title, int index, IconData icon) {
    final isSelected = selectedTabIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTabIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFF001B2F) : Colors.white,
          border: Border.all(
            color: isSelected ? Colors.transparent : Colors.grey[300]!,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Icon(icon, color: isSelected ? Colors.white : Color(0xFF001B2F)),
            const SizedBox(width: 4),
            Text(
              title,
              style: TextStyle(
                color: isSelected ? Colors.white : Color(0xFF001B2F),
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabContent() {
    switch (selectedTabIndex) {
      case 0:
        return _buildGaitsTab();
      case 1:
        return _buildHeartRateTab();
      case 2:
        return _buildElevationTab();
      default:
        return Container();
    }
  }

  Widget _buildGaitsTab() {
    return Column(
      children: [
        Center(child: Text("Gaits", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
      ],
    );
  }

  Widget _buildHeartRateTab() {
    return Column(
      children: [
        Center(child: Text("Heart Rate", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
      ],
    );
  }

  Widget _buildElevationTab() {
    return Column(
      children: [
        Center(child: Text("Elevation", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
      ],
    );
  }
}

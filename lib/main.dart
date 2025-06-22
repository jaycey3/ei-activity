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
        child: SingleChildScrollView(
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
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
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
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
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

              const SizedBox(height: 20),

              _buildTabContent(),
            ],
          ),
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

  Widget _mapStats(
    String title,
    Color color,
    IconData icon1,
    String value1,
    IconData? icon2,
    String? value2,
    IconData? icon3,
    String? value3,
    IconData? icon4,
    String? value4,
  ) {
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
              Icon(icon1, size: 24, color: Color(0xFF001B2F)),
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
                  Icon(icon2, size: 24, color: Color(0xFF001B2F)),
                  const SizedBox(width: 8),
                  Text(
                    value2,
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
              Icon(icon3, size: 24, color: Color(0xFF001B2F)),
              const SizedBox(width: 8),
              Text(
                value3,
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
              Icon(icon4, size: 24, color: Color(0xFF001B2F)),
              const SizedBox(width: 8),
              Text(
                value4,
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
              _mapStats(
                "Walk",
                Color(0xFF2BE6DF),
                Icons.timer_outlined,
                "1:23 min",
                Icons.place_outlined,
                "240 m",
                Icons.favorite_outline,
                "47 bpm",
                Icons.speed_outlined,
                "7 km/h",
              ),
              _mapStats(
                "Trot",
                Color(0xFF1DBDBF),
                Icons.timer_outlined,
                "0:58 min",
                Icons.place_outlined,
                "370 m",
                Icons.favorite_outline,
                "94 bpm",
                Icons.speed_outlined,
                "13 km/h",
              ),
              _mapStats(
                "Canter",
                Color(0xFF147D9B),
                Icons.timer_outlined,
                "0:45 min",
                Icons.place_outlined,
                "500 m",
                Icons.favorite_outline,
                "120 bpm",
                Icons.speed_outlined,
                "15 km/h",
              ),
              _mapStats(
                "Gallop",
                Color(0xFF001B2F),
                Icons.timer_outlined,
                "0:30 min",
                Icons.place_outlined,
                "600 m",
                Icons.favorite_outline,               
                "150 bpm",
                Icons.speed_outlined,
                "20 km/h",
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildHeartRateTab() {
    return Column(
      children: [
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.width * 0.9,                decoration: BoxDecoration(
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
              _mapStats(
                "Lowest Heart Rate",
                Color(0xFF00BF63),
                Icons.favorite_outline,
                "47 bpm",
                Icons.timer_outlined,
                "0:16 min",
                Icons.place_outlined,
                "90 m",
                Icons.speed_outlined,
                "7 km/h",
              ),
              _mapStats(
                "Highest Heart Rate",
                Color(0xFFFF5757),
                Icons.favorite_outline,
                "148 bpm",
                Icons.timer_outlined,
                "0:19 min",
                Icons.place_outlined,
                "320 m",
                Icons.speed_outlined,
                "28 km/h",
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildElevationTab() {
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
              _mapStats(
                "Lowest Altitude",
                Color(0xFFC1FF72),
                Icons.arrow_downward_outlined,
                "47 m",
                null,
                null,
                null,
                null,
                null,
                null,
              ),
              _mapStats(
                "Highest Altitude",
                Color(0xFF00BF63),
                Icons.arrow_upward_outlined,
                "148 m",
                null,
                null,
                null,
                null,
                null,
                null,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

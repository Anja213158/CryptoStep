import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ActivityScreen extends StatelessWidget {
  final List<FlSpot> stepData = [
    FlSpot(0, 7250),
    FlSpot(1, 8100),
    FlSpot(2, 7850),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activity'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      "Today: 7,250 steps – Earned: 0.003 StepCoins",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Yesterday: 8,100 steps – Earned: 0.004 StepCoins",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Average this week: 7,850 steps/day",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),
            Text(
              "Weekly Progress",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            SizedBox(
              height: 250, // Increased height for better view
              child: LineChart(
                LineChartData(
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: true, reservedSize: 32),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: true, reservedSize: 32),
                    ),
                    topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  ),
                  borderData: FlBorderData(
                    show: true,
                    border: Border.all(
                      color: Colors.blueAccent,
                      width: 1,
                    ),
                  ),
                  gridData: FlGridData(
                    show: true,
                    horizontalInterval: 500, // Horizontal grid lines for clarity
                    verticalInterval: 1, // Vertical grid lines for clarity
                    getDrawingHorizontalLine: (value) {
                      return FlLine(
                        color: Colors.grey.withOpacity(0.3),
                        strokeWidth: 1,
                      );
                    },
                    getDrawingVerticalLine: (value) {
                      return FlLine(
                        color: Colors.grey.withOpacity(0.3),
                        strokeWidth: 1,
                      );
                    },
                  ),
                  lineBarsData: [
                    LineChartBarData(
                      spots: stepData,
                      isCurved: true,
                      barWidth: 4,
                      gradient: LinearGradient(
                        colors: [Colors.green, Colors.lightGreenAccent],
                      ),
                      belowBarData: BarAreaData(show: true, color: Colors.green.withOpacity(0.3)),
                      dotData: FlDotData(show: false),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

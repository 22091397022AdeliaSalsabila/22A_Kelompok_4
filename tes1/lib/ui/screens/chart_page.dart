import 'dart:math';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ChartPage extends StatefulWidget {
  @override
  _ChartPageState createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  late ChartData _chartData;

  @override
  void initState() {
    super.initState();
    _generateChartData();
  }

  void _generateChartData() {
    List<String> clothingTypes =
    ['T-shirt', 'Hoodie', 'Short Pants', 'Totebag', 'Shirt'];
    List<int> quantities =
    [10, 5, 0, 3, 2];

    List<Map<String, dynamic>> data = [];

    double totalSales = 0;

    for (int i = 0; i < clothingTypes.length; i++) {
      String backgroundColor = 'rgba('
          '${Random().nextInt(255)}, '
          '${Random().nextInt(255)}, '
          '${Random().nextInt(255)}, 0.5)';
      data.add({
        'label': clothingTypes[i],
        'data': quantities[i],
        'backgroundColor': backgroundColor,
      });

      totalSales += quantities[i];
    }

    _chartData = ChartData(labels: clothingTypes, datasets: data);

    print('Total Sales: $totalSales');
  }

  //Mengatur nilai rgba agar dapat disesuaikan
  Color _parseColor(String rgbaColor) {
    List<String> values = rgbaColor.substring(5, rgbaColor.length - 1).split(', ');

    int r = int.parse(values[0]);
    int g = int.parse(values[1]);
    int b = int.parse(values[2]);
    double a = double.parse(values[3]);

    return Color.fromRGBO(r, g, b, a);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clothing Expense Chart'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.6,
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  maxY: _chartData.datasets.map((data) => data['data']).reduce((max, value) => max > value ? max : value).toDouble() * 1.2,
                  groupsSpace: 12,
                  borderData: FlBorderData(
                    show: false, //
                  ),
                  barGroups: List.generate(
                    _chartData.datasets.length,
                        (index) => BarChartGroupData(
                      x: index,
                      barRods: [
                        BarChartRodData(
                          toY: _chartData.datasets[index]['data'].toDouble(),
                          color: _parseColor(_chartData.datasets[index]['backgroundColor']),
                          width: 16,
                        ),
                      ],
                    ),
                  ),
                ),
                swapAnimationDuration: Duration(milliseconds: 1500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChartData {
  final List<String> labels;
  final List<Map<String, dynamic>> datasets;

  ChartData({required this.labels, required this.datasets});
}

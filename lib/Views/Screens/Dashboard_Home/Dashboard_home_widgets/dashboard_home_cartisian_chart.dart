// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DashboardHomeCartisianChart extends StatelessWidget {
  const DashboardHomeCartisianChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Container(
        height: 400,
        width: 600,
        child: SfCartesianChart(
          title: ChartTitle(
            text: 'Users Chart',
            textStyle: const TextStyle(fontWeight: FontWeight.bold),
          ),
          primaryXAxis: CategoryAxis(),
          primaryYAxis: NumericAxis(),
          series: <ChartSeries>[
            ColumnSeries<UsersData, String>(
              dataSource: getcolumnData(),
              xValueMapper: (UsersData users, _) => users.x,
              yValueMapper: (UsersData users, _) => users.y,
            ),
          ],
        ),
      ),
    );
  }
}

class UsersData {
  String x;
  double y;
  UsersData(this.x, this.y);
}

dynamic getcolumnData() {
  List<UsersData> columndata = <UsersData>[
    UsersData('Monday', 20),
    UsersData('Tuesday', 40),
    UsersData('Wednesday', 60),
    UsersData('Thursday', 30),
    UsersData('Friday', 45),
    UsersData('Saturday', 40),
    UsersData('Sunday', 40),
  ];
  return columndata;
}

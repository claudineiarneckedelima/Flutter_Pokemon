import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class SimpleBarChartComponent extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  SimpleBarChartComponent(this.seriesList, {this.animate});

  @override
  Widget build(BuildContext context) {
    return new charts.BarChart(
      seriesList,
      animate: animate,
    );
  }
}

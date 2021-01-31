import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class DonutPieChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  const DonutPieChart(this.seriesList, {this.animate});

  factory DonutPieChart.withSampleData() => DonutPieChart(
        _createSampleData(),
        animate: false,
      );

  @override
  Widget build(BuildContext context) => charts.PieChart(
        seriesList,
        animate: animate,
        defaultRenderer: charts.ArcRendererConfig(
          arcWidth: 90,
          strokeWidthPx: 12,
        ),
        behaviors: [
          charts.DatumLegend(),
        ],
      );

  static List<charts.Series<_LinearSales, String>> _createSampleData() => [
        charts.Series<_LinearSales, String>(
          id: 'Sales',
          domainFn: (_LinearSales sales, _) => sales.title,
          measureFn: (_LinearSales sales, _) => sales.sales,
          data: [
            _LinearSales('Burgers', 95),
            _LinearSales('Pizza', 60),
            _LinearSales('Kebabs', 40),
          ],
        )
      ];
}

class _LinearSales {
  final String title;
  final int sales;

  _LinearSales(this.title, this.sales);
}

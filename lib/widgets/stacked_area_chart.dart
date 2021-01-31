import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class StackedAreaLineChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  const StackedAreaLineChart(
    this.seriesList, {
    this.animate,
  });

  factory StackedAreaLineChart.withSampleData() => StackedAreaLineChart(
        _createSampleData(),
        animate: false,
      );

  @override
  Widget build(BuildContext context) => charts.LineChart(
        seriesList,
        defaultRenderer: charts.LineRendererConfig(
          includeArea: true,
          stacked: true,
        ),
        animate: animate,
        domainAxis: const charts.NumericAxisSpec(
          renderSpec: charts.NoneRenderSpec(),
        ),
        primaryMeasureAxis: const charts.NumericAxisSpec(
          renderSpec: charts.NoneRenderSpec(),
        ),
        behaviors: [
          charts.SeriesLegend(),
        ],
      );

  static List<charts.Series<_LinearSales, int>> _createSampleData() => [
        charts.Series<_LinearSales, int>(
          id: 'Dine In',
          colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
          areaColorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
          domainFn: (_LinearSales sales, _) => sales.year,
          measureFn: (_LinearSales sales, _) => sales.sales,
          data: [
            _LinearSales(0, 5),
            _LinearSales(1, 25),
            _LinearSales(2, 100),
            _LinearSales(3, 75),
          ],
        ),
        charts.Series<_LinearSales, int>(
          id: 'Delivery',
          colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
          areaColorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
          domainFn: (_LinearSales sales, _) => sales.year,
          measureFn: (_LinearSales sales, _) => sales.sales,
          data: [
            _LinearSales(0, 10),
            _LinearSales(1, 50),
            _LinearSales(2, 200),
            _LinearSales(3, 150),
          ],
        ),
        charts.Series<_LinearSales, int>(
          id: 'Pickup',
          colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
          areaColorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
          domainFn: (_LinearSales sales, _) => sales.year,
          measureFn: (_LinearSales sales, _) => sales.sales,
          data: [
            _LinearSales(0, 15),
            _LinearSales(1, 75),
            _LinearSales(2, 300),
            _LinearSales(3, 225),
          ],
        ),
      ];
}

class _LinearSales {
  final int year;
  final int sales;

  _LinearSales(this.year, this.sales);
}

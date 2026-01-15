import 'package:dwprice/main.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class PricePage extends StatefulWidget {
  const PricePage({super.key});

  @override
  State<PricePage> createState() => _PricePageState();
}
final List<ChartData> candles = [
ChartData(DateTime(2026, 1, 11),  45.2, 37.1, 38.5, 42.8, 34.2, 48.1),
  ChartData(DateTime(2026, 1, 10),  47.8, 41.3, 42.9, 46.1, 38.9, 50.7),
  ChartData(DateTime(2026, 1, 9),   48.5, 43.9, 46.0, 44.7, 41.5, 52.3),
  ChartData(DateTime(2026, 1, 8),   50.3, 43.2, 44.8, 49.4, 40.1, 54.6),
  ChartData(DateTime(2026, 1, 7),   53.7, 48.1, 49.5, 51.9, 45.3, 57.8),
  ChartData(DateTime(2026, 1, 6),   55.4, 50.2, 51.8, 53.2, 47.0, 59.4),
  ChartData(DateTime(2026, 1, 5),   54.9, 49.6, 53.1, 50.8, 46.2, 58.9),
  ChartData(DateTime(2026, 1, 4),   53.2, 48.4, 50.7, 52.1, 45.8, 56.7),
  ChartData(DateTime(2026, 1, 3),   58.1, 51.5, 52.2, 56.8, 48.7, 62.4),
  ChartData(DateTime(2026, 1, 2),   60.7, 55.3, 56.9, 59.4, 52.1, 65.3),
  ChartData(DateTime(2026, 1, 1),   62.1, 57.8, 59.3, 58.2, 54.6, 66.8),
  ChartData(DateTime(2025, 12, 31), 59.9, 54.6, 58.1, 56.0, 51.2, 64.1),
  ChartData(DateTime(2025, 12, 30), 58.4, 53.9, 56.2, 57.5, 50.3, 62.9),
  ChartData(DateTime(2025, 12, 29), 61.8, 56.5, 57.6, 60.3, 53.4, 66.2),
  ChartData(DateTime(2025, 12, 28), 64.2, 59.1, 60.4, 62.7, 55.8, 69.0),
  ChartData(DateTime(2025, 12, 27), 65.5, 60.9, 62.8, 61.4, 57.2, 70.4),
  ChartData(DateTime(2025, 12, 26), 63.7, 58.2, 61.3, 59.8, 54.9, 68.5),
  ChartData(DateTime(2025, 12, 25), 66.1, 58.7, 59.9, 64.5, 55.1, 71.3),
  ChartData(DateTime(2025, 12, 24), 67.9, 62.8, 64.6, 66.2, 59.4, 73.2),
  ChartData(DateTime(2025, 12, 23), 68.4, 63.5, 66.1, 64.9, 60.3, 73.8),
  ChartData(DateTime(2025, 12, 22), 67.2, 61.9, 64.8, 63.1, 58.7, 72.4),
  ChartData(DateTime(2025, 12, 21), 66.5, 60.4, 63.0, 65.7, 57.8, 71.9),
  ChartData(DateTime(2025, 12, 20), 70.3, 64.2, 65.8, 68.9, 60.9, 75.6),
  ChartData(DateTime(2025, 12, 19), 71.8, 67.1, 69.0, 70.4, 64.2, 77.1),
  ChartData(DateTime(2025, 12, 18), 72.6, 68.3, 70.5, 69.2, 65.1, 78.0),
  ChartData(DateTime(2025, 12, 17), 71.4, 66.8, 69.1, 70.8, 63.7, 76.9),
  ChartData(DateTime(2025, 12, 16), 74.5, 69.7, 70.9, 73.2, 66.8, 80.2),
  ChartData(DateTime(2025, 12, 15), 75.9, 71.0, 73.3, 72.6, 67.9, 81.4),
  ChartData(DateTime(2025, 12, 14), 74.8, 70.1, 72.5, 73.9, 66.5, 80.3),
  ChartData(DateTime(2025, 12, 13), 76.2, 71.9, 73.8, 75.1, 68.4, 81.9),
  ChartData(DateTime(2025, 12, 12), 75.4, 72.3, 75.0, 73.6, 68.9, 81.2),
  ChartData(DateTime(2025, 12, 11), 74.1, 70.8, 73.5, 72.9, 67.3, 79.8),
  ChartData(DateTime(2025, 12, 10), 76.8, 71.5, 72.7, 75.4, 67.8, 82.7),
  ChartData(DateTime(2025, 12, 9),  77.9, 73.2, 75.6, 76.8, 69.4, 83.8),
  ChartData(DateTime(2025, 12, 8),  78.5, 74.1, 76.9, 75.2, 70.2, 84.3),
  ChartData(DateTime(2025, 12, 7),  76.3, 72.9, 75.1, 74.7, 69.1, 82.1),
  ChartData(DateTime(2025, 12, 6),  75.0, 71.4, 74.6, 73.8, 67.8, 80.6),
  ChartData(DateTime(2025, 12, 5),  77.2, 73.8, 73.9, 76.5, 70.3, 83.0),
  ChartData(DateTime(2025, 12, 4),  79.1, 74.6, 76.4, 78.3, 71.2, 85.0),
  ChartData(DateTime(2025, 12, 3),  80.4, 76.2, 78.5, 79.7, 72.8, 86.5),
  ChartData(DateTime(2025, 12, 2),  79.8, 75.9, 79.6, 77.4, 72.1, 85.7),
  ChartData(DateTime(2025, 12, 1),  78.5, 74.3, 77.3, 76.9, 70.5, 84.2),
  ChartData(DateTime(2025, 11, 30), 81.2, 76.8, 77.0, 80.1, 73.4, 87.3),
  ChartData(DateTime(2025, 11, 29), 82.7, 78.4, 80.3, 81.5, 75.1, 88.9),
  ChartData(DateTime(2025, 11, 28), 81.9, 77.6, 81.4, 79.8, 74.2, 87.8),
  ChartData(DateTime(2025, 11, 27), 80.6, 76.1, 79.7, 78.9, 72.8, 86.4),
  ChartData(DateTime(2025, 11, 26), 83.3, 78.9, 79.0, 82.4, 75.6, 89.2),
  ChartData(DateTime(2025, 11, 25), 84.8, 80.2, 82.5, 83.9, 76.9, 90.8),
  ChartData(DateTime(2025, 11, 24), 83.5, 79.4, 83.8, 81.7, 75.8, 89.5),
  ChartData(DateTime(2025, 11, 23), 82.1, 77.8, 81.6, 80.9, 74.2, 88.3),
].reversed.toList();

class _PricePageState extends State<PricePage> {
  @override
  Widget build(BuildContext context) {
    l.d('PricePage.build');
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Row(
        children: [
          Container(
            color: AppColors.bg2,
            width: MediaQuery.of(context).size.width / 8,
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(78),
                    border: Border.all(color: AppColors.second, width: 5)
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(78),
                    child: Image.network(
                      'data:image/jpeg;base64,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',
                      width: 78, height: 78, fit: BoxFit.fill
                    )
                  )
                ),
                Text('Алмаз', style: TextStyle(fontSize: 20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Сред. цена:'),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 4,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('15.02', style: TextStyle(color: AppColors.error)),
                        Text('-7.9%', style: TextStyle(color: AppColors.error, fontSize: 10)),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Мин. цена:'),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 4,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('14.98', style: TextStyle(color: AppColors.error)),
                        Text('-7.8%', style: TextStyle(color: AppColors.error, fontSize: 10)),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Макс. цена:'),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 4,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('15.72', style: TextStyle(color: AppColors.error)),
                        Text('-6.4%', style: TextStyle(color: AppColors.error, fontSize: 10)),
                      ],
                    )
                  ],
                ),
              ]
            )
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 8, right: 8),
              // child: CandlesticksChart(
              //   data: [
              //     [92.46, 103.04, 101.39, 93.79],
              //     [95.63, 104.33, 96.15, 98.98],
              //     [87.64, 99.51, 98.2, 90.68],
              //     [77.86, 89.84, 85.95, 81.13],
              //     [78.3, 84.62, 78.33, 79.76],
              //     [81.89, 88.03, 82.82, 85.99],
              //     [87.37, 91.12, 90.56, 87.95],
              //     [87.05, 97.93, 91.42, 93.08],
              //     [90.13, 103.28, 93.44, 101.01],
              //     [100.84, 111.37, 104.3, 106.2],
              //     [99.24, 109.61, 108.25, 100.98],
              //     [90.83, 97.38, 96.78, 92.5],
              //     [90.44, 96.08, 93.86, 91.69],
              //     [85.7, 100.23, 89.36, 96.35],
              //     [90.78, 97.71, 93.06, 96.73],
              //     [97.52, 107.21, 101.63, 103.87],
              //     [107.11, 113.09, 107.3, 111.71],
              //     [100.49, 111.13, 109.86, 106.15],
              //     [104.57, 113.85, 109.91, 106.95],
              //     [108.96, 112.68, 111.1, 110.44],
              //     [101.87, 114.56, 111.05, 107.26],
              //     [98.71, 112.24, 106.25, 101.76],
              //     [86.66, 98.33, 97.67, 90.42],
              //     [89.81, 93.72, 93.34, 92.1],
              //     [91.9, 103.35, 97.06, 97.53],
              //     [89.42, 100.27, 92.64, 96.18],
              //     [91.24, 96.77, 93.85, 96.1],
              //     [94.06, 108.15, 95.64, 102.9],
              //     [92.54, 108.38, 102.91, 97.76],
              //     [94.83, 101.62, 95.74, 97.97],
              //   ],
              //   height: double.infinity,
              //   getLowCallback: (a) => a[0],
              //   getHightCallback: (a) => a[1],
              //   getOpenCallback: (a) => a[2],
              //   getCloseCallback: (a) => a[3],
              //   getTimeCallback: (a) => DateTime.now(),
              //   style: CandlestickChartStyle(
              //     yLegendStyle: CandlestickChartYLegendStyle(
              //       numberOfLabels: 10,
              //       fractionDigits: 0,
              //       lineStyle: CandlestickChartLineStyle(width: 1, color: AppColors.main)
              //     ),
              //     candlestickStyle: CandlestickStyle(
              //       bearishColor: AppColors.error, bullishColor: AppColors.success
              //     ),
              //     tooltipColor: AppColors.main
              //   ),
              //   options: CandlestickChartOptions(isScrollable: true),
              // )
              // child: Candlesticks(
              //   candles: List.generate(40, (index) {
              //     final basePrice = 95000 + index * 500.0;
              //     final variation = (index % 7 - 3) * 1200.0;
              //     final open = basePrice + variation;
              //     final close = basePrice + variation + (index % 5 - 2) * 800.0;
              //     return Candle(
              //       date: DateTime.now().subtract(Duration(hours: 4 * index)),
              //       open: open,
              //       high: open + 1500 + (index % 3) * 300,
              //       low: open - 1500 - (index % 4) * 400,
              //       close: close,
              //       volume: 1200000 + (index * 50000),
              //     );
              //   })
              // ),
              // child: CandlestickChart(
              //   CandlestickChartData(
              //     candlestickSpots: [
              //       CandlestickSpot(x: 1, open: 7.2, high: 8.1, low: 6.5, close: 6.8),
              //       CandlestickSpot(x: 2, open: 6.9, high: 7.8, low: 5.9, close: 6.2),
              //       CandlestickSpot(x: 3, open: 6.1, high: 7.4, low: 5.4, close: 7.1),
              //       CandlestickSpot(x: 4, open: 7.0, high: 8.5, low: 6.8, close: 8.2),
              //       CandlestickSpot(x: 5, open: 8.3, high: 9.2, low: 7.6, close: 8.9),
              //       CandlestickSpot(x: 6, open: 8.8, high: 9.5, low: 7.9, close: 8.1),
              //       CandlestickSpot(x: 7, open: 8.0, high: 8.7, low: 7.2, close: 7.5),
              //       CandlestickSpot(x: 8, open: 7.6, high: 8.4, low: 6.9, close: 8.1),
              //       CandlestickSpot(x: 9, open: 8.2, high: 9.8, low: 7.8, close: 9.4),
              //       CandlestickSpot(x: 10, open: 9.5, high: 10.3, low: 8.9, close: 9.1),
              //       CandlestickSpot(x: 11, open: 9.0, high: 9.7, low: 8.2, close: 8.6),
              //       CandlestickSpot(x: 12, open: 8.7, high: 9.4, low: 7.5, close: 7.9),
              //       CandlestickSpot(x: 13, open: 7.8, high: 8.6, low: 6.8, close: 8.3),
              //       CandlestickSpot(x: 14, open: 8.4, high: 9.1, low: 7.9, close: 8.8),
              //       CandlestickSpot(x: 15, open: 8.9, high: 10.2, low: 8.5, close: 9.7),
              //       CandlestickSpot(x: 16, open: 9.8, high: 10.8, low: 9.1, close: 9.3),
              //       CandlestickSpot(x: 17, open: 9.2, high: 9.9, low: 8.4, close: 8.7),
              //       CandlestickSpot(x: 18, open: 8.6, high: 9.5, low: 7.8, close: 9.1),
              //     ],
              //   ),
              // ),
              child: Builder(
              builder: (context) {
                if (candles.isEmpty) {
                  return const SizedBox(); // или placeholder
                }

                final lastCandle = candles.last;
                final double lastClose = lastCandle.close;

                // Находим реальный минимум и максимум по всем свечам
                double globalMin = candles.map((c) => c.low).reduce((a, b) => a < b ? a : b);
                double globalMax = candles.map((c) => c.high).reduce((a, b) => a > b ? a : b);

                // Небольшой запас сверху/снизу (можно настроить 0.05–0.15)
                final double paddingFactor = 0.10;
                final double padding = (globalMax - globalMin) * paddingFactor;

                // Хотим, чтобы lastClose был примерно в центре
                final double range = (globalMax - globalMin) * 1.6; // 1.4–2.0 — подбери под вкус
                double minY = lastClose - range / 2;
                double maxY = lastClose + range / 2;

                // Защита: не сжимаем график меньше реального диапазона + запас
                minY = minY < globalMin - padding ? minY : globalMin - padding;
                maxY = maxY > globalMax + padding ? maxY : globalMax + padding;

                return SfCartesianChart(
                  legend: Legend(
                    isVisible: true,
                    position: LegendPosition.bottom,
                  ),
                  primaryXAxis: DateTimeAxis(
                    initialZoomFactor: 0.5,
                    initialZoomPosition: 1,
                    intervalType: DateTimeIntervalType.days,
                    dateFormat: DateFormat('dd.MM'),
                    labelRotation: -45,
                    maximumLabels: 15,
                  ),
                  primaryYAxis: NumericAxis(
                    interval: 10,
                    minimum: minY,
                    maximum: maxY
                  ),
                  zoomPanBehavior: ZoomPanBehavior(
                    enableMouseWheelZooming: true,
                    enablePinching: true,
                    enablePanning: true,
                    enableDirectionalZooming: true,
                    maximumZoomLevel: 0.2,
                    zoomMode: ZoomMode.x,
                  ),
                  series: <CartesianSeries<ChartData, DateTime>>[
                    CandleSeries<ChartData, DateTime>(
                      dataSource: candles,
                      enableTooltip: false,
                      enableSolidCandles: true,
                      bearColor: AppColors.error,
                      bullColor: AppColors.success,
                      xValueMapper: (ChartData data, _) => data.x,
                      highValueMapper: (ChartData data, _) => data.high,
                      lowValueMapper: (ChartData data, _) => data.low,
                      openValueMapper: (ChartData data, _) => data.open,
                      closeValueMapper: (ChartData data, _) => data.close,
                      isVisibleInLegend: false,
                    ),
                    LineSeries<ChartData, DateTime>(
                      dataSource: candles,
                      xValueMapper: (d, _) => d.x,
                      yValueMapper: (d, _) => d.close,
                      color: AppColors.warning,
                      width: 1.2,
                      name: 'Средняя цена',
                    ),
                    LineSeries<ChartData, DateTime>(
                      dataSource: candles,
                      xValueMapper: (d, _) => d.x,
                      yValueMapper: (d, _) => d.min,
                      color: AppColors.success,
                      width: 1.8,
                      dashArray: const <double>[14, 12],
                      name: 'Самая низкая цена',
                    ),

                    LineSeries<ChartData, DateTime>(
                      dataSource: candles,
                      xValueMapper: (d, _) => d.x,
                      yValueMapper: (d, _) => d.max,
                      color: AppColors.error,
                      width: 1.8,
                      dashArray: const <double>[14, 12],
                      name: 'Самая высокая цена',
                    ),
                  ],
                );
              },
            ),
            )
          ),
          Container(
            color: AppColors.bg2,
            width: MediaQuery.of(context).size.width / 5,
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Text('Цена в магазинах:', style: TextStyle(fontSize: 16)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text('Магазин')
                    ),
                    Expanded(
                      flex: 1,
                      child: Text('Покупка', style: TextStyle(color: AppColors.success))
                    ),
                    Expanded(
                      flex: 1,
                      child: Text('Продажа', style: TextStyle(color: AppColors.error))
                    )
                  ]
                ),
                SizedBox(height: 4),
                Expanded(
                  child: ListView.builder(
                    itemCount: 15,
                    itemBuilder: (c, i){
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Text('ЗалМарт', style: TextStyle(fontWeight: FontWeight.bold))
                            ),
                            Expanded(
                              flex: 1,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                spacing: 4,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('17.37', style: TextStyle(color: AppColors.success)),
                                  Text('+1.3%', style: TextStyle(color: AppColors.success, fontSize: 10)),
                                ],
                              )
                            ),
                            Expanded(
                              flex: 1,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                spacing: 4,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('15.02', style: TextStyle(color: AppColors.error)),
                                  Text('-7.9%', style: TextStyle(color: AppColors.error, fontSize: 10)),
                                ],
                              )
                            ),
                          ]
                        )
                      );
                    }
                  )
                ),
                SizedBox(height: 4),
                ElevatedButton.icon(
                  onPressed: (){},
                  icon: Icon(Icons.add_circle_outline_sharp),
                  label: Text('Добавить свой магазин')
                )
              ],
            ),
          )
        ]
      )
    );
  }
}

class ChartData {
  ChartData(this.x, this.high, this.low, this.open, this.close, this.min, this.max);

  final DateTime x;
  final double high;
  final double low;
  final double open;
  final double close;
  final double min;
  final double max;
}
import 'package:doa_exchange_client/core/helper/color_helper.dart';
import 'package:doa_exchange_client/views/view_home_base/controllers/currency_view_controller.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LineChartSample2 extends StatefulWidget {
  final CurrencyViewController controller;
  const LineChartSample2({super.key, required this.controller});

  @override
  State<LineChartSample2> createState() => _LineChartSample2State();
}

class _LineChartSample2State extends State<LineChartSample2> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.75,
      child: Padding(
        padding: const EdgeInsets.only(
          right: 12,
          left: 12,
          top: 12,
          bottom: 12,
        ),
        child: LineChart(
          LineChartData(
            gridData: FlGridData(
              show: true,
              drawVerticalLine: true,
              horizontalInterval: 1,
              verticalInterval:
                  (widget.controller.maxYValue - widget.controller.minYValue) /
                      5,
              getDrawingHorizontalLine: (value) {
                return const FlLine(
                  color: AppColors.mainGridLineColor,
                  strokeWidth: 1,
                );
              },
              getDrawingVerticalLine: (value) {
                return const FlLine(
                  color: AppColors.mainGridLineColor,
                  strokeWidth: 1,
                );
              },
            ),
            titlesData: FlTitlesData(
              show: true,
              rightTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              topTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 20,
                  interval: 1,
                  getTitlesWidget: (double value, TitleMeta meta) {
                    final index = value.toInt();
                    if (index >= 0 &&
                        index < widget.controller.historicalData.length) {
                      return Text(
                        DateFormat('dd/MM').format(
                            widget.controller.historicalData[index].date),
                        style: const TextStyle(fontSize: 10),
                      );
                    }
                    return const Text("");
                  },
                ),
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  interval: (widget.controller.maxYValue -
                          widget.controller.minYValue) /
                      5,
                  getTitlesWidget: (double value, TitleMeta meta) {
                    return Text(
                      value.toStringAsFixed(4),
                      maxLines: 1,
                      style: const TextStyle(fontSize: 10),
                    );
                  },
                  reservedSize: 50,
                ),
              ),
            ),
            borderData: FlBorderData(
              show: true,
              border: Border.all(color: const Color(0xff37434d)),
            ),
            minX: 0,
            maxX: 6,
            minY: widget.controller.minYValue,
            maxY: widget.controller.maxYValue,
            lineBarsData: [
              LineChartBarData(
                  spots: widget.controller.generateChartData(),
                  isCurved: true,
                  gradient: LinearGradient(
                    colors: widget.controller.gradientColors,
                  ),
                  barWidth: 5,
                  isStrokeCapRound: true,
                  shadow: const Shadow(
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                    offset: Offset(0, 3),
                    blurRadius: 4,
                  ),
                  dotData: const FlDotData(
                    show: false,
                  ),
                  belowBarData: BarAreaData(
                    show: true,
                    gradient: LinearGradient(
                      colors: widget.controller.gradientColors
                          .map((color) => color.withOpacity(0.5))
                          .toList(),
                    ),
                  ),
                  aboveBarData: BarAreaData(
                    show: true,
                    gradient: LinearGradient(
                      colors: widget.controller.gradientColors
                          .map((color) => color.withOpacity(0.1))
                          .toList(),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Charts extends StatefulWidget {
  const Charts({
    super.key,
  });

  @override
  State<Charts> createState() => _ChartsState();
}

class _ChartsState extends State<Charts> {
  final List<Color> colors = [
    const Color(0xff06DCCF),
  ];

  @override
  void initState() {
    super.initState();
    // widget.bloc.add(GetAllLeaveData());
  }

  final List<double> stops = [0.2];

  Float64List _resolveTransform(Rect bounds, TextDirection textDirection) {
    final GradientTransform transform = GradientRotation(_degreeToRadian(-90));
    return transform.transform(bounds, textDirection: textDirection)!.storage;
  }

  // Convert degree to radian
  double _degreeToRadian(int deg) => deg * (3.141592653589793 / 180);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 140,
      child: SfCircularChart(
          margin: const EdgeInsets.all(5),
          tooltipBehavior: TooltipBehavior(enable: true),
          legend: const Legend(
              textStyle: TextStyle(color: Colors.white),
              isVisible: false,
              position: LegendPosition.bottom),
          annotations: <CircularChartAnnotation>[
            CircularChartAnnotation(
                widget: const PhysicalModel(
                    shape: BoxShape.circle,
                    shadowColor: Colors.transparent,
                    color: Colors.transparent,
                    child: SizedBox(
                      height: 70,
                      width: 70,
                    ))),
            CircularChartAnnotation(
                widget: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("100%",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white))
              ],
            ))
          ],
          onCreateShader: (ChartShaderDetails chartShaderDetails) {
            return ui.Gradient.sweep(
                chartShaderDetails.outerRect.center,
                colors,
                stops,
                TileMode.clamp,
                _degreeToRadian(0),
                _degreeToRadian(360),
                _resolveTransform(
                    chartShaderDetails.outerRect, TextDirection.ltr));
          },
          series: <CircularSeries>[
            RadialBarSeries<_PieData, String>(
                maximumValue: 100,
                trackBorderWidth: 30,
                innerRadius: "69%",
                dataSource: [_PieData("อัตราการตอบสนอง", 100, "")],
                xValueMapper: (_PieData data, _) => data.xData,
                yValueMapper: (_PieData data, _) => data.yData,
                cornerStyle: CornerStyle.bothCurve,
                trackColor: Colors.white,
                legendIconType: LegendIconType.circle,
                radius: '140%')
          ]),
    );
  }
}

class _PieData {
  _PieData(this.xData, this.yData, this.text);

  final String xData;
  final num yData;
  final String text;
}

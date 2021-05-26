import 'package:charts_painter/chart.dart';
import 'package:flutter/material.dart';

TextStyle get defaultTextStyle => TextStyle(fontFamily: 'Roboto', color: Colors.black54, fontSize: 12.0);

Widget getDefaultChart({
  List<DecorationPainter>? foregroundDecorations,
  List<DecorationPainter>? backgroundDecorations,
}) {
  return Padding(
    padding: const EdgeInsets.only(top: 24.0),
    child: Chart<void>(
      state: ChartState(
        ChartData.fromList(
          [5, 6, 8, 4, 3, 5, 2, 6, 7].map((e) => BarValue<void>(e.toDouble())).toList(),
          valueAxisMaxOver: 2,
        ),
        itemOptions: ItemOptions(
          geometryPainter: barPainter,
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          color: Colors.red.withOpacity(0.1),
        ),
        backgroundDecorations: backgroundDecorations ?? [],
        foregroundDecorations: foregroundDecorations ?? [],
      ),
    ),
  );
}

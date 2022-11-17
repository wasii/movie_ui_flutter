// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

import '../../../constants.dart';

class PlotSummary extends StatelessWidget {
  final String plotSummary;
  const PlotSummary({super.key, required this.plotSummary});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2, horizontal: kDefaultPadding),
          child: Text(
            "Plot Summary",
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
          ),
          child: Text(
            plotSummary,
            style: TextStyle(
              color: Color(0xFF737599),
            ),
          ),
        ),
      ],
    );
  }
}
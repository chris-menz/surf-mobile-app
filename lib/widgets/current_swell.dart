import 'dart:html';

import 'package:flutter/material.dart';
import 'package:swell_status_prototype/types/report/current_stormglass_data.dart';
import 'package:swell_status_prototype/types/report/surf_report_data.dart';

class CurrentSwellBox extends StatefulWidget {
  const CurrentSwellBox({super.key, required this.surfReportData});

  final SurfReportData surfReportData;

  @override
  State <CurrentSwellBox> createState() =>  CurrentSwellBoxState();
}

class  CurrentSwellBoxState extends State <CurrentSwellBox> {

  @override
  Widget build(BuildContext context) {
    final List<Hour> hours = widget.surfReportData.currentStormglassData.hours;

    return Text(hours[0].swellHeight.sg.toString());
  }
}
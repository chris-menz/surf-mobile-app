import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import '../types/report/current_stormglass_data.dart';


class _SurfReportSpotState extends State<SurfReportView> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Row(
              children: <Widget>[
                Text("${widget.surfSpot}")
              ],
            ),
            Row(
              children: const <Widget>[
                Text("Swell"),
                Text("Wind")
              ],
            ),
            Row(
              children: const<Widget>[
                Text("Tide")
              ],
            )
          ],
        ),
      ),
    );
  }

}


class SurfReportView extends StatefulWidget {
  String surfSpot = "Surf Spot Placeholder";

  @override
  State<SurfReportView> createState() => _SurfReportSpotState();
}

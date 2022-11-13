import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../types/current_stormglass_data.dart';


class _SurfReportSpotState extends State<SurfReportView> {
  String surfSpot = "";

  void _setSurfSpot (String newSpot) {
    setState(() {
      surfSpot = newSpot;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
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
    Future<StormglassCurrentData> data = fetchCurrentStormglassData("42.845", "-71.26");
    
    @override
    State<SurfReportView> createState() => _SurfReportSpotState();
}

Future<StormglassCurrentData> fetchCurrentStormglassData(String lat, String lng) async {
    String url = "https://api.stormglass.io/v2/weather/point?lat=$lat&lng=$lng&params=swellHeight,swellPeriod,swellDirection,windSpeed,windDirection,waterTemperature,waveHeight,wavePeriod,waveDirection,windWaveHeight,windWavePeriod,windWaveDirection,secondarySwellHeight,secondarySwellPeriod,secondarySwellDirection&source=noaa,sg";

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return StormglassCurrentData.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Failed to fetch current Stormglass data");
    }
}
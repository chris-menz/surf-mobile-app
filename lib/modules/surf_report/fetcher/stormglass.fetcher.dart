import 'package:http/http.dart' as http;
import 'package:swell_status_prototype/types/report/current_stormglass_data.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class StormglassDataFetcher {
  Future<CurrentStormglassData> fetchStormglassData(String lat, String lng) async {
    String url = "https://vzfg169vfc.execute-api.us-east-1.amazonaws.com/TestStage2/current-stormglass?lat=41.486&lng=-71.26";
    final response = await http.get(Uri.parse(url));
    
    if (response.statusCode == 200) {
      CurrentStormglassData data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception("Failed to fetch current Stormglass data");
    }
  }
}
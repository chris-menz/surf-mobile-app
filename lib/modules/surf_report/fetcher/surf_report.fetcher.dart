import 'package:swell_status_prototype/data/stormglass.dart';
import 'package:swell_status_prototype/types/report/surf_report_data.dart';
import 'package:swell_status_prototype/types/report/surf_spot_data.dart';
import 'package:swell_status_prototype/types/report/current_stormglass_data.dart';

class SurfReportDataFetcher {
  Future<SurfReportData> fetchSurfReportData(String surfSpotId) async {
    final StormglassDataFetcher stormglassDataFetcher = StormglassDataFetcher();
    CurrentStormglassData stormglass = await stormglassDataFetcher.fetchStormglassData("42.86", "-71.56");

    SurfReportData surfReportData = SurfReportData(
      currentStormglassData: stormglass
    );

    return surfReportData;
  }
}
import 'package:swell_status_prototype/modules/surf_report/types/current_stormglass_data.type.dart';
import 'package:swell_status_prototype/modules/surf_report/types/surf_spot_data.type.dart';

class AllSurfReportData {
  final List<SurfReportData> allSurfReportData;

  AllSurfReportData({
    required this.allSurfReportData
  });
}

class SurfReportData {
  // final SurfSpotData surfSpotData;
  final CurrentStormglassData currentStormglassData;

  SurfReportData({
    // required this.surfSpotData,
    required this.currentStormglassData
  });
}

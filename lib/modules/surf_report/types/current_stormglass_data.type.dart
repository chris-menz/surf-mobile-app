// To parse this JSON data, do
//
//     final currentStormglassData = currentStormglassDataFromJson(jsonString);

import 'dart:convert';

CurrentStormglassData currentStormglassDataFromJson(String str) => CurrentStormglassData.fromJson(json.decode(str));

String currentStormglassDataToJson(CurrentStormglassData data) => json.encode(data.toJson());

class CurrentStormglassData {
    CurrentStormglassData({
        required this.hours,
        required this.meta,
    });

    final List<Hour> hours;
    final Meta meta;

    factory CurrentStormglassData.fromJson(Map<String, dynamic> json) => CurrentStormglassData(
        hours: List<Hour>.from(json["hours"].map((x) => Hour.fromJson(x))),
        meta: Meta.fromJson(json["meta"]),
    );

    Map<String, dynamic> toJson() => {
        "hours": List<dynamic>.from(hours.map((x) => x.toJson())),
        "meta": meta.toJson(),
    };
}

class Hour {
    Hour({
        required this.swellDirection,
        required this.swellHeight,
        required this.swellPeriod,
        required this.time,
        required this.waterTemperature,
        required this.waveDirection,
        required this.waveHeight,
        required this.wavePeriod,
        required this.windDirection,
        required this.windSpeed,
        required this.windWaveDirection,
        required this.windWaveHeight,
        required this.windWavePeriod,
    });

    final SwellDirection swellDirection;
    final SwellDirection swellHeight;
    final SwellDirection swellPeriod;
    final DateTime time;
    final WaterTemperature waterTemperature;
    final SwellDirection waveDirection;
    final SwellDirection waveHeight;
    final SwellDirection wavePeriod;
    final WaterTemperature windDirection;
    final WaterTemperature windSpeed;
    final SwellDirection windWaveDirection;
    final SwellDirection windWaveHeight;
    final SwellDirection windWavePeriod;

    factory Hour.fromJson(Map<String, dynamic> json) => Hour(
        swellDirection: SwellDirection.fromJson(json["swellDirection"]),
        swellHeight: SwellDirection.fromJson(json["swellHeight"]),
        swellPeriod: SwellDirection.fromJson(json["swellPeriod"]),
        time: DateTime.parse(json["time"]),
        waterTemperature: WaterTemperature.fromJson(json["waterTemperature"]),
        waveDirection: SwellDirection.fromJson(json["waveDirection"]),
        waveHeight: SwellDirection.fromJson(json["waveHeight"]),
        wavePeriod: SwellDirection.fromJson(json["wavePeriod"]),
        windDirection: WaterTemperature.fromJson(json["windDirection"]),
        windSpeed: WaterTemperature.fromJson(json["windSpeed"]),
        windWaveDirection: SwellDirection.fromJson(json["windWaveDirection"]),
        windWaveHeight: SwellDirection.fromJson(json["windWaveHeight"]),
        windWavePeriod: SwellDirection.fromJson(json["windWavePeriod"]),
    );

    Map<String, dynamic> toJson() => {
        "swellDirection": swellDirection == null ? null : swellDirection.toJson(),
        "swellHeight": swellHeight == null ? null : swellHeight.toJson(),
        "swellPeriod": swellPeriod == null ? null : swellPeriod.toJson(),
        "time": time.toIso8601String(),
        "waterTemperature": waterTemperature.toJson(),
        "waveDirection": waveDirection == null ? null : waveDirection.toJson(),
        "waveHeight": waveHeight == null ? null : waveHeight.toJson(),
        "wavePeriod": wavePeriod == null ? null : wavePeriod.toJson(),
        "windDirection": windDirection.toJson(),
        "windSpeed": windSpeed.toJson(),
        "windWaveDirection": windWaveDirection == null ? null : windWaveDirection.toJson(),
        "windWaveHeight": windWaveHeight == null ? null : windWaveHeight.toJson(),
        "windWavePeriod": windWavePeriod == null ? null : windWavePeriod.toJson(),
    };
}

class SwellDirection {
    SwellDirection({
        required this.sg,
    });

    final double sg;

    factory SwellDirection.fromJson(Map<String, dynamic> json) => SwellDirection(
        sg: json["sg"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "sg": sg,
    };
}

class WaterTemperature {
    WaterTemperature({
        required this.noaa,
        required this.sg,
    });

    final double noaa;
    final double sg;

    factory WaterTemperature.fromJson(Map<String, dynamic> json) => WaterTemperature(
        noaa: json["noaa"].toDouble(),
        sg: json["sg"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "noaa": noaa,
        "sg": sg,
    };
}

class Meta {
    Meta({
        required this.cost,
        required this.dailyQuota,
        required this.end,
        required this.lat,
        required this.lng,
        required this.params,
        required this.requestCount,
        required this.source,
        required this.start,
    });

    final int cost;
    final int dailyQuota;
    final String end;
    final double lat;
    final double lng;
    final List<String> params;
    final int requestCount;
    final List<String> source;
    final String start;

    factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        cost: json["cost"],
        dailyQuota: json["dailyQuota"],
        end: json["end"],
        lat: json["lat"].toDouble(),
        lng: json["lng"].toDouble(),
        params: List<String>.from(json["params"].map((x) => x)),
        requestCount: json["requestCount"],
        source: List<String>.from(json["source"].map((x) => x)),
        start: json["start"],
    );

    Map<String, dynamic> toJson() => {
        "cost": cost,
        "dailyQuota": dailyQuota,
        "end": end,
        "lat": lat,
        "lng": lng,
        "params": List<dynamic>.from(params.map((x) => x)),
        "requestCount": requestCount,
        "source": List<dynamic>.from(source.map((x) => x)),
        "start": start,
    };
}

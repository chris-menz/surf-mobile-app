class StormglassCurrentData {
  final List<Hours>? hours;
  final Meta? meta;

  StormglassCurrentData({
    this.hours,
    this.meta,
  });

  StormglassCurrentData.fromJson(Map<String, dynamic> json)
    : hours = (json['hours'] as List?)?.map((dynamic e) => Hours.fromJson(e as Map<String,dynamic>)).toList(),
      meta = (json['meta'] as Map<String,dynamic>?) != null ? Meta.fromJson(json['meta'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'hours' : hours?.map((e) => e.toJson()).toList(),
    'meta' : meta?.toJson()
  };
}

class Hours {
  final SwellDirection? swellDirection;
  final SwellHeight? swellHeight;
  final SwellPeriod? swellPeriod;
  final String? time;
  final WaterTemperature? waterTemperature;
  final WaveDirection? waveDirection;
  final WaveHeight? waveHeight;
  final WavePeriod? wavePeriod;
  final WindDirection? windDirection;
  final WindSpeed? windSpeed;
  final WindWaveDirection? windWaveDirection;
  final WindWaveHeight? windWaveHeight;
  final WindWavePeriod? windWavePeriod;

  Hours({
    this.swellDirection,
    this.swellHeight,
    this.swellPeriod,
    this.time,
    this.waterTemperature,
    this.waveDirection,
    this.waveHeight,
    this.wavePeriod,
    this.windDirection,
    this.windSpeed,
    this.windWaveDirection,
    this.windWaveHeight,
    this.windWavePeriod,
  });

  Hours.fromJson(Map<String, dynamic> json)
    : swellDirection = (json['swellDirection'] as Map<String,dynamic>?) != null ? SwellDirection.fromJson(json['swellDirection'] as Map<String,dynamic>) : null,
      swellHeight = (json['swellHeight'] as Map<String,dynamic>?) != null ? SwellHeight.fromJson(json['swellHeight'] as Map<String,dynamic>) : null,
      swellPeriod = (json['swellPeriod'] as Map<String,dynamic>?) != null ? SwellPeriod.fromJson(json['swellPeriod'] as Map<String,dynamic>) : null,
      time = json['time'] as String?,
      waterTemperature = (json['waterTemperature'] as Map<String,dynamic>?) != null ? WaterTemperature.fromJson(json['waterTemperature'] as Map<String,dynamic>) : null,
      waveDirection = (json['waveDirection'] as Map<String,dynamic>?) != null ? WaveDirection.fromJson(json['waveDirection'] as Map<String,dynamic>) : null,
      waveHeight = (json['waveHeight'] as Map<String,dynamic>?) != null ? WaveHeight.fromJson(json['waveHeight'] as Map<String,dynamic>) : null,
      wavePeriod = (json['wavePeriod'] as Map<String,dynamic>?) != null ? WavePeriod.fromJson(json['wavePeriod'] as Map<String,dynamic>) : null,
      windDirection = (json['windDirection'] as Map<String,dynamic>?) != null ? WindDirection.fromJson(json['windDirection'] as Map<String,dynamic>) : null,
      windSpeed = (json['windSpeed'] as Map<String,dynamic>?) != null ? WindSpeed.fromJson(json['windSpeed'] as Map<String,dynamic>) : null,
      windWaveDirection = (json['windWaveDirection'] as Map<String,dynamic>?) != null ? WindWaveDirection.fromJson(json['windWaveDirection'] as Map<String,dynamic>) : null,
      windWaveHeight = (json['windWaveHeight'] as Map<String,dynamic>?) != null ? WindWaveHeight.fromJson(json['windWaveHeight'] as Map<String,dynamic>) : null,
      windWavePeriod = (json['windWavePeriod'] as Map<String,dynamic>?) != null ? WindWavePeriod.fromJson(json['windWavePeriod'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'swellDirection' : swellDirection?.toJson(),
    'swellHeight' : swellHeight?.toJson(),
    'swellPeriod' : swellPeriod?.toJson(),
    'time' : time,
    'waterTemperature' : waterTemperature?.toJson(),
    'waveDirection' : waveDirection?.toJson(),
    'waveHeight' : waveHeight?.toJson(),
    'wavePeriod' : wavePeriod?.toJson(),
    'windDirection' : windDirection?.toJson(),
    'windSpeed' : windSpeed?.toJson(),
    'windWaveDirection' : windWaveDirection?.toJson(),
    'windWaveHeight' : windWaveHeight?.toJson(),
    'windWavePeriod' : windWavePeriod?.toJson()
  };
}

class SwellDirection {
  final double? sg;

  SwellDirection({
    this.sg,
  });

  SwellDirection.fromJson(Map<String, dynamic> json)
    : sg = json['sg'] as double?;

  Map<String, dynamic> toJson() => {
    'sg' : sg
  };
}

class SwellHeight {
  final double? sg;

  SwellHeight({
    this.sg,
  });

  SwellHeight.fromJson(Map<String, dynamic> json)
    : sg = json['sg'] as double?;

  Map<String, dynamic> toJson() => {
    'sg' : sg
  };
}

class SwellPeriod {
  final double? sg;

  SwellPeriod({
    this.sg,
  });

  SwellPeriod.fromJson(Map<String, dynamic> json)
    : sg = json['sg'] as double?;

  Map<String, dynamic> toJson() => {
    'sg' : sg
  };
}

class WaterTemperature {
  final double? noaa;
  final double? sg;

  WaterTemperature({
    this.noaa,
    this.sg,
  });

  WaterTemperature.fromJson(Map<String, dynamic> json)
    : noaa = json['noaa'] as double?,
      sg = json['sg'] as double?;

  Map<String, dynamic> toJson() => {
    'noaa' : noaa,
    'sg' : sg
  };
}

class WaveDirection {
  final double? sg;

  WaveDirection({
    this.sg,
  });

  WaveDirection.fromJson(Map<String, dynamic> json)
    : sg = json['sg'] as double?;

  Map<String, dynamic> toJson() => {
    'sg' : sg
  };
}

class WaveHeight {
  final double? sg;

  WaveHeight({
    this.sg,
  });

  WaveHeight.fromJson(Map<String, dynamic> json)
    : sg = json['sg'] as double?;

  Map<String, dynamic> toJson() => {
    'sg' : sg
  };
}

class WavePeriod {
  final double? sg;

  WavePeriod({
    this.sg,
  });

  WavePeriod.fromJson(Map<String, dynamic> json)
    : sg = json['sg'] as double?;

  Map<String, dynamic> toJson() => {
    'sg' : sg
  };
}

class WindDirection {
  final double? noaa;
  final double? sg;

  WindDirection({
    this.noaa,
    this.sg,
  });

  WindDirection.fromJson(Map<String, dynamic> json)
    : noaa = json['noaa'] as double?,
      sg = json['sg'] as double?;

  Map<String, dynamic> toJson() => {
    'noaa' : noaa,
    'sg' : sg
  };
}

class WindSpeed {
  final double? noaa;
  final double? sg;

  WindSpeed({
    this.noaa,
    this.sg,
  });

  WindSpeed.fromJson(Map<String, dynamic> json)
    : noaa = json['noaa'] as double?,
      sg = json['sg'] as double?;

  Map<String, dynamic> toJson() => {
    'noaa' : noaa,
    'sg' : sg
  };
}

class WindWaveDirection {
  final double? sg;

  WindWaveDirection({
    this.sg,
  });

  WindWaveDirection.fromJson(Map<String, dynamic> json)
    : sg = json['sg'] as double?;

  Map<String, dynamic> toJson() => {
    'sg' : sg
  };
}

class WindWaveHeight {
  final double? sg;

  WindWaveHeight({
    this.sg,
  });

  WindWaveHeight.fromJson(Map<String, dynamic> json)
    : sg = json['sg'] as double?;

  Map<String, dynamic> toJson() => {
    'sg' : sg
  };
}

class WindWavePeriod {
  final double? sg;

  WindWavePeriod({
    this.sg,
  });

  WindWavePeriod.fromJson(Map<String, dynamic> json)
    : sg = json['sg'] as double?;

  Map<String, dynamic> toJson() => {
    'sg' : sg
  };
}

class Meta {
  final int? cost;
  final int? dailyQuota;
  final String? end;
  final double? lat;
  final double? lng;
  final List<String>? params;
  final int? requestCount;
  final List<String>? source;
  final String? start;

  Meta({
    this.cost,
    this.dailyQuota,
    this.end,
    this.lat,
    this.lng,
    this.params,
    this.requestCount,
    this.source,
    this.start,
  });

  Meta.fromJson(Map<String, dynamic> json)
    : cost = json['cost'] as int?,
      dailyQuota = json['dailyQuota'] as int?,
      end = json['end'] as String?,
      lat = json['lat'] as double?,
      lng = json['lng'] as double?,
      params = (json['params'] as List?)?.map((dynamic e) => e as String).toList(),
      requestCount = json['requestCount'] as int?,
      source = (json['source'] as List?)?.map((dynamic e) => e as String).toList(),
      start = json['start'] as String?;

  Map<String, dynamic> toJson() => {
    'cost' : cost,
    'dailyQuota' : dailyQuota,
    'end' : end,
    'lat' : lat,
    'lng' : lng,
    'params' : params,
    'requestCount' : requestCount,
    'source' : source,
    'start' : start
  };
}
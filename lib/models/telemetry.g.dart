// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telemetry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountersImpl _$$CountersImplFromJson(Map<String, dynamic> json) =>
    _$CountersImpl(
      bmeReadErrors: (json['bmeReadErrors'] as num?)?.toInt(),
      escapeAttempts: (json['escapeAttempts'] as num?)?.toInt(),
      lightSeekingSessions: (json['lightSeekingSessions'] as num?)?.toInt(),
      logOverflows: (json['logOverflows'] as num?)?.toInt(),
      obstaclesAvoided: (json['obstaclesAvoided'] as num?)?.toInt(),
      pbDecodeFailures: (json['pbDecodeFailures'] as num?)?.toInt(),
      shadowSeekingSessions: (json['shadowSeekingSessions'] as num?)?.toInt(),
      stuckEvents: (json['stuckEvents'] as num?)?.toInt(),
      totalIrrigationDurationS: (json['totalIrrigationDurationS'] as num?)
          ?.toInt(),
      totalIrrigations: (json['totalIrrigations'] as num?)?.toInt(),
      totalMotorActiveTimeS: (json['totalMotorActiveTimeS'] as num?)?.toInt(),
      watchdogResets: (json['watchdogResets'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CountersImplToJson(_$CountersImpl instance) =>
    <String, dynamic>{
      'bmeReadErrors': instance.bmeReadErrors,
      'escapeAttempts': instance.escapeAttempts,
      'lightSeekingSessions': instance.lightSeekingSessions,
      'logOverflows': instance.logOverflows,
      'obstaclesAvoided': instance.obstaclesAvoided,
      'pbDecodeFailures': instance.pbDecodeFailures,
      'shadowSeekingSessions': instance.shadowSeekingSessions,
      'stuckEvents': instance.stuckEvents,
      'totalIrrigationDurationS': instance.totalIrrigationDurationS,
      'totalIrrigations': instance.totalIrrigations,
      'totalMotorActiveTimeS': instance.totalMotorActiveTimeS,
      'watchdogResets': instance.watchdogResets,
    };

_$DistancesCmImpl _$$DistancesCmImplFromJson(Map<String, dynamic> json) =>
    _$DistancesCmImpl(
      frontLeft: (json['frontLeft'] as num?)?.toDouble(),
      frontRight: (json['frontRight'] as num?)?.toDouble(),
      left: (json['left'] as num?)?.toInt(),
      right: (json['right'] as num?)?.toDouble(),
      top: (json['top'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$DistancesCmImplToJson(_$DistancesCmImpl instance) =>
    <String, dynamic>{
      'frontLeft': instance.frontLeft,
      'frontRight': instance.frontRight,
      'left': instance.left,
      'right': instance.right,
      'top': instance.top,
    };

_$TelemetryImpl _$$TelemetryImplFromJson(Map<String, dynamic> json) =>
    _$TelemetryImpl(
      deviceId: json['deviceId'] as String?,
      fwVersion: json['fwVersion'] as String?,
      timestampUtc: (json['timestampUtc'] as num?)?.toInt(),
      uptimeS: (json['uptimeS'] as num?)?.toInt(),
      batteryVoltage: (json['batteryVoltage'] as num?)?.toInt(),
      lux: (json['lux'] as num?)?.toInt(),
      movementState: $enumDecodeNullable(
        _$MovementStateEnumMap,
        json['movementState'],
      ),
      humidityPercent: (json['humidityPercent'] as num?)?.toInt(),
      pressureHpa: (json['pressureHpa'] as num?)?.toInt(),
      temperatureC: (json['temperatureC'] as num?)?.toInt(),
      gasResistanceOhms: (json['gasResistanceOhms'] as num?)?.toInt(),
      soilMoisture: (json['soilMoisture'] as num?)?.toInt(),
      distancesCm: json['distancesCm'] == null
          ? null
          : DistancesCm.fromJson(json['distancesCm'] as Map<String, dynamic>),
      waterLevelCm: (json['waterLevelCm'] as num?)?.toDouble(),
      freeRamBytes: (json['freeRamBytes'] as num?)?.toInt(),
      counters: json['counters'] == null
          ? null
          : Counters.fromJson(json['counters'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TelemetryImplToJson(_$TelemetryImpl instance) =>
    <String, dynamic>{
      'deviceId': instance.deviceId,
      'fwVersion': instance.fwVersion,
      'timestampUtc': instance.timestampUtc,
      'uptimeS': instance.uptimeS,
      'batteryVoltage': instance.batteryVoltage,
      'lux': instance.lux,
      'movementState': _$MovementStateEnumMap[instance.movementState],
      'humidityPercent': instance.humidityPercent,
      'pressureHpa': instance.pressureHpa,
      'temperatureC': instance.temperatureC,
      'gasResistanceOhms': instance.gasResistanceOhms,
      'soilMoisture': instance.soilMoisture,
      'distancesCm': instance.distancesCm,
      'waterLevelCm': instance.waterLevelCm,
      'freeRamBytes': instance.freeRamBytes,
      'counters': instance.counters,
    };

const _$MovementStateEnumMap = {
  MovementState.idle: 'IDLE',
  MovementState.moving: 'MOVING',
  MovementState.stuck: 'STUCK',
  MovementState.unknown: 'UNKNOWN',
};

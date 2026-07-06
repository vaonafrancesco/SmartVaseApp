import 'package:freezed_annotation/freezed_annotation.dart';

part 'telemetry.freezed.dart';
part 'telemetry.g.dart';

/// Movement state enum
enum MovementState {
  @JsonValue('IDLE')
  idle,
  @JsonValue('MOVING')
  moving,
  @JsonValue('STUCK')
  stuck,
  @JsonValue('UNKNOWN')
  unknown,
}

/// Counters data model
@freezed
class Counters with _$Counters {
  const factory Counters({
    int? bmeReadErrors,
    int? escapeAttempts,
    int? lightSeekingSessions,
    int? logOverflows,
    int? obstaclesAvoided,
    int? pbDecodeFailures,
    int? shadowSeekingSessions,
    int? stuckEvents,
    int? totalIrrigationDurationS,
    int? totalIrrigations,
    int? totalMotorActiveTimeS,
    int? watchdogResets,
  }) = _Counters;

  factory Counters.fromJson(Map<String, dynamic> json) =>
      _$CountersFromJson(json);
}

/// Distances data model
@freezed
class DistancesCm with _$DistancesCm {
  const factory DistancesCm({
    double? frontLeft,
    double? frontRight,
    int? left,
    double? right,
    double? top,
  }) = _DistancesCm;

  factory DistancesCm.fromJson(Map<String, dynamic> json) =>
      _$DistancesCmFromJson(json);
}

/// Telemetry data model
/// Path: smartvase/{device_id}/telemetry/telemetry
@freezed
class Telemetry with _$Telemetry {
  const factory Telemetry({
    /// Device info
    String? deviceId,
    String? fwVersion,
    
    /// Base fields
    int? timestampUtc,
    int? uptimeS,
    int? batteryVoltage,
    int? lux,
    MovementState? movementState,
    
    /// Environmental sensors
    int? humidityPercent,
    int? pressureHpa,
    int? temperatureC,
    int? gasResistanceOhms,
    int? soilMoisture,
    
    /// Navigation distances
    DistancesCm? distancesCm,
    
    /// Fluid management
    double? waterLevelCm,
    
    /// System status
    int? freeRamBytes,
    
    /// Counters
    Counters? counters,
  }) = _Telemetry;

  factory Telemetry.fromJson(Map<String, dynamic> json) =>
      _$TelemetryFromJson(json);
}

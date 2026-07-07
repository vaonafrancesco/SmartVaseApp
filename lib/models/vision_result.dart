import 'package:freezed_annotation/freezed_annotation.dart';

part 'vision_result.freezed.dart';
part 'vision_result.g.dart';

/// Plant health enum
enum PlantHealth {
  @JsonValue('healthy')
  healthy,
  @JsonValue('warning')
  warning,
  @JsonValue('critical')
  critical,
  @JsonValue('unknown')
  unknown,
}

double? _percentToDouble(dynamic value) {
  if (value == null) return null;
  if (value is num) return value.toDouble();
  if (value is String) {
    final s = value.replaceAll('%', '').trim();
    return (double.tryParse(s) ?? 0.0) / 100.0;
  }
  return null;
}

PlantHealth? _plantHealthFromJson(dynamic value) {
  if (value == null) return null;
  if (value is bool) {
    return value ? PlantHealth.healthy : PlantHealth.critical;
  }
  if (value is String) {
    switch (value.toLowerCase()) {
      case 'healthy': return PlantHealth.healthy;
      case 'warning': return PlantHealth.warning;
      case 'critical': return PlantHealth.critical;
      default: return PlantHealth.unknown;
    }
  }
  return PlantHealth.unknown;
}

/// Vision result data model
/// Path: smartvase/CAM_123456/vision/latest
@freezed
class VisionResult with _$VisionResult {
  const factory VisionResult({
    @JsonKey(name: 'timestamp_utc') int? timestampUtc,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'plant_healthy', fromJson: _plantHealthFromJson) PlantHealth? plantHealthy,
    @JsonKey(name: 'status_message') String? statusMessage,
    @JsonKey(name: 'foliage_coverage', fromJson: _percentToDouble) double? foliageCoverage,
    @JsonKey(name: 'green_ratio', fromJson: _percentToDouble) double? greenRatio,
    @JsonKey(name: 'brown_ratio', fromJson: _percentToDouble) double? brownRatio,
  }) = _VisionResult;

  factory VisionResult.fromJson(Map<String, dynamic> json) =>
      _$VisionResultFromJson(json);
}

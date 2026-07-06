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

/// Vision result data model
/// Path: smartvase/CAM_123456/vision/latest
@freezed
class VisionResult with _$VisionResult {
  const factory VisionResult({
    int? timestampUtc,
    String? imageUrl,
    PlantHealth? plantHealthy,
    String? statusMessage,
    double? foliageCoverage,
    double? greenRatio,
    double? brownRatio,
  }) = _VisionResult;

  factory VisionResult.fromJson(Map<String, dynamic> json) =>
      _$VisionResultFromJson(json);
}

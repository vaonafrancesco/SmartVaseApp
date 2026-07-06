import 'package:freezed_annotation/freezed_annotation.dart';

part 'vision_result.freezed.dart';
part 'vision_result.g.dart';

/// Frame quality enum
enum FrameQuality {
  @JsonValue('ok')
  ok,
  @JsonValue('too_dark')
  tooDark,
  @JsonValue('too_bright')
  tooBright,
  @JsonValue('blurry')
  blurry,
  @JsonValue('occluded')
  occluded,
  @JsonValue('unknown')
  unknown,
}

/// Leaf health enum
enum LeafHealth {
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
/// Path: smartvase/{device_id}/vision/result
@freezed
class VisionResult with _$VisionResult {
  const factory VisionResult({
    /// Required fields
    required int schemaVersion,
    required String modelVersion,
    required int timestampUtc,
    required String imageUrl,
    required FrameQuality frameQuality,
    required LeafHealth leafHealth,
    
    /// Optional fields
    Map<String, dynamic>? metrics,
    Map<String, dynamic>? recommendations
  }) = _VisionResult;

  factory VisionResult.fromJson(Map<String, dynamic> json) =>
      _$VisionResultFromJson(json);
}

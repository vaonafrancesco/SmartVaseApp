// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vision_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VisionResultImpl _$$VisionResultImplFromJson(Map<String, dynamic> json) =>
    _$VisionResultImpl(
      schemaVersion: (json['schemaVersion'] as num).toInt(),
      modelVersion: json['modelVersion'] as String,
      timestampUtc: (json['timestampUtc'] as num).toInt(),
      imageUrl: json['imageUrl'] as String,
      frameQuality: $enumDecode(_$FrameQualityEnumMap, json['frameQuality']),
      leafHealth: $enumDecode(_$LeafHealthEnumMap, json['leafHealth']),
      metrics: json['metrics'] as Map<String, dynamic>?,
      recommendations: json['recommendations'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$VisionResultImplToJson(_$VisionResultImpl instance) =>
    <String, dynamic>{
      'schemaVersion': instance.schemaVersion,
      'modelVersion': instance.modelVersion,
      'timestampUtc': instance.timestampUtc,
      'imageUrl': instance.imageUrl,
      'frameQuality': _$FrameQualityEnumMap[instance.frameQuality]!,
      'leafHealth': _$LeafHealthEnumMap[instance.leafHealth]!,
      'metrics': instance.metrics,
      'recommendations': instance.recommendations,
    };

const _$FrameQualityEnumMap = {
  FrameQuality.ok: 'ok',
  FrameQuality.tooDark: 'too_dark',
  FrameQuality.tooBright: 'too_bright',
  FrameQuality.blurry: 'blurry',
  FrameQuality.occluded: 'occluded',
  FrameQuality.unknown: 'unknown',
};

const _$LeafHealthEnumMap = {
  LeafHealth.healthy: 'healthy',
  LeafHealth.warning: 'warning',
  LeafHealth.critical: 'critical',
  LeafHealth.unknown: 'unknown',
};

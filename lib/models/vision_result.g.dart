// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vision_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VisionResultImpl _$$VisionResultImplFromJson(Map<String, dynamic> json) =>
    _$VisionResultImpl(
      timestampUtc: (json['timestamp_utc'] as num?)?.toInt(),
      imageUrl: json['image_url'] as String?,
      plantHealthy: _plantHealthFromJson(json['plant_healthy']),
      statusMessage: json['status_message'] as String?,
      foliageCoverage: _percentToDouble(json['foliage_coverage']),
      greenRatio: _percentToDouble(json['green_ratio']),
      brownRatio: _percentToDouble(json['brown_ratio']),
    );

Map<String, dynamic> _$$VisionResultImplToJson(_$VisionResultImpl instance) =>
    <String, dynamic>{
      'timestamp_utc': instance.timestampUtc,
      'image_url': instance.imageUrl,
      'plant_healthy': _$PlantHealthEnumMap[instance.plantHealthy],
      'status_message': instance.statusMessage,
      'foliage_coverage': instance.foliageCoverage,
      'green_ratio': instance.greenRatio,
      'brown_ratio': instance.brownRatio,
    };

const _$PlantHealthEnumMap = {
  PlantHealth.healthy: 'healthy',
  PlantHealth.warning: 'warning',
  PlantHealth.critical: 'critical',
  PlantHealth.unknown: 'unknown',
};

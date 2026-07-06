// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vision_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VisionResultImpl _$$VisionResultImplFromJson(Map<String, dynamic> json) =>
    _$VisionResultImpl(
      timestampUtc: (json['timestampUtc'] as num?)?.toInt(),
      imageUrl: json['imageUrl'] as String?,
      plantHealthy: $enumDecodeNullable(
        _$PlantHealthEnumMap,
        json['plantHealthy'],
      ),
      statusMessage: json['statusMessage'] as String?,
      foliageCoverage: (json['foliageCoverage'] as num?)?.toDouble(),
      greenRatio: (json['greenRatio'] as num?)?.toDouble(),
      brownRatio: (json['brownRatio'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$VisionResultImplToJson(_$VisionResultImpl instance) =>
    <String, dynamic>{
      'timestampUtc': instance.timestampUtc,
      'imageUrl': instance.imageUrl,
      'plantHealthy': _$PlantHealthEnumMap[instance.plantHealthy],
      'statusMessage': instance.statusMessage,
      'foliageCoverage': instance.foliageCoverage,
      'greenRatio': instance.greenRatio,
      'brownRatio': instance.brownRatio,
    };

const _$PlantHealthEnumMap = {
  PlantHealth.healthy: 'healthy',
  PlantHealth.warning: 'warning',
  PlantHealth.critical: 'critical',
  PlantHealth.unknown: 'unknown',
};

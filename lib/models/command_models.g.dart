// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'command_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommandConfigImpl _$$CommandConfigImplFromJson(Map<String, dynamic> json) =>
    _$CommandConfigImpl(
      plantApiId: json['plantApiId'] as String,
      minLux: (json['minLux'] as num).toInt(),
      maxLux: (json['maxLux'] as num).toInt(),
      targetSoilMoisture: (json['targetSoilMoisture'] as num).toInt(),
    );

Map<String, dynamic> _$$CommandConfigImplToJson(_$CommandConfigImpl instance) =>
    <String, dynamic>{
      'plantApiId': instance.plantApiId,
      'minLux': instance.minLux,
      'maxLux': instance.maxLux,
      'targetSoilMoisture': instance.targetSoilMoisture,
    };

_$WaterCommandImpl _$$WaterCommandImplFromJson(Map<String, dynamic> json) =>
    _$WaterCommandImpl(durationMs: (json['durationMs'] as num).toInt());

Map<String, dynamic> _$$WaterCommandImplToJson(_$WaterCommandImpl instance) =>
    <String, dynamic>{'durationMs': instance.durationMs};

_$SetModeCommandImpl _$$SetModeCommandImplFromJson(Map<String, dynamic> json) =>
    _$SetModeCommandImpl(
      mode: $enumDecode(_$OperatingModeEnumMap, json['mode']),
    );

Map<String, dynamic> _$$SetModeCommandImplToJson(
  _$SetModeCommandImpl instance,
) => <String, dynamic>{'mode': _$OperatingModeEnumMap[instance.mode]!};

const _$OperatingModeEnumMap = {
  OperatingMode.idle: 'IDLE',
  OperatingMode.light: 'LIGHT',
  OperatingMode.shadow: 'SHADOW',
};

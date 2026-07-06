// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plant_api_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlantApiResultImpl _$$PlantApiResultImplFromJson(Map<String, dynamic> json) =>
    _$PlantApiResultImpl(
      id: (json['id'] as num).toInt(),
      commonName: json['commonName'] as String,
      scientificName: json['scientificName'] as String?,
      otherName: json['otherName'] as String?,
      cycle: json['cycle'] as String?,
      watering: json['watering'] as String?,
      sunlight: json['sunlight'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$PlantApiResultImplToJson(
  _$PlantApiResultImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'commonName': instance.commonName,
  'scientificName': instance.scientificName,
  'otherName': instance.otherName,
  'cycle': instance.cycle,
  'watering': instance.watering,
  'sunlight': instance.sunlight,
  'imageUrl': instance.imageUrl,
};

_$PerenualResponseImpl _$$PerenualResponseImplFromJson(
  Map<String, dynamic> json,
) => _$PerenualResponseImpl(
  page: (json['page'] as num).toInt(),
  data: (json['data'] as List<dynamic>)
      .map((e) => PlantApiResult.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$PerenualResponseImplToJson(
  _$PerenualResponseImpl instance,
) => <String, dynamic>{'page': instance.page, 'data': instance.data};

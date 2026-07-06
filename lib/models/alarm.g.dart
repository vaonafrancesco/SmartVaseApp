// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlarmImpl _$$AlarmImplFromJson(Map<String, dynamic> json) => _$AlarmImpl(
  event: json['event'] as String,
  level: json['level'] as String,
  timestampUtc: (json['timestampUtc'] as num).toInt(),
);

Map<String, dynamic> _$$AlarmImplToJson(_$AlarmImpl instance) =>
    <String, dynamic>{
      'event': instance.event,
      'level': instance.level,
      'timestampUtc': instance.timestampUtc,
    };

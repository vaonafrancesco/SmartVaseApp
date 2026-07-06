// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'command_ack.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommandAckImpl _$$CommandAckImplFromJson(Map<String, dynamic> json) =>
    _$CommandAckImpl(
      status: json['status'] as String,
      detail: json['detail'] as String,
      cmdId: (json['cmdId'] as num).toInt(),
      value: (json['value'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CommandAckImplToJson(_$CommandAckImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'detail': instance.detail,
      'cmdId': instance.cmdId,
      'value': instance.value,
    };

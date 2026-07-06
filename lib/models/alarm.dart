import 'package:freezed_annotation/freezed_annotation.dart';

part 'alarm.freezed.dart';
part 'alarm.g.dart';

/// Alarm data model
/// Path: smartvase/{device_id}/alarm
@freezed
class Alarm with _$Alarm {
  const factory Alarm({
    required String event,
    required String level,
    required int timestampUtc,
  }) = _Alarm;

  factory Alarm.fromJson(Map<String, dynamic> json) =>
      _$AlarmFromJson(json);
}

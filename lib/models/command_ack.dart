import 'package:freezed_annotation/freezed_annotation.dart';

part 'command_ack.freezed.dart';
part 'command_ack.g.dart';

/// Command ACK data model
/// Path: smartvase/{device_id}/command/ack
@freezed
class CommandAck with _$CommandAck {
  const factory CommandAck({
    required String status,
    required String detail,
    required int cmdId,
    int? value
  }) = _CommandAck;

  factory CommandAck.fromJson(Map<String, dynamic> json) =>
      _$CommandAckFromJson(json);
}

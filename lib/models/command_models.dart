import 'package:freezed_annotation/freezed_annotation.dart';

part 'command_models.freezed.dart';
part 'command_models.g.dart';

/// Operating mode enum
enum OperatingMode {
  @JsonValue('IDLE')
  idle,
  @JsonValue('LIGHT')
  light,
  @JsonValue('SHADOW')
  shadow,
}

/// Command config model for writing to command/config
@freezed
class CommandConfig with _$CommandConfig {
  const factory CommandConfig({
    required String plantApiId,
    required int minLux,
    required int maxLux,
    required int targetSoilMoisture,
  }) = _CommandConfig;

  factory CommandConfig.fromJson(Map<String, dynamic> json) =>
      _$CommandConfigFromJson(json);
}

/// Water command payload
@freezed
class WaterCommand with _$WaterCommand {
  const factory WaterCommand({
    required int durationMs,
  }) = _WaterCommand;

  factory WaterCommand.fromJson(Map<String, dynamic> json) =>
      _$WaterCommandFromJson(json);
}

/// Set mode command payload
@freezed
class SetModeCommand with _$SetModeCommand {
  const factory SetModeCommand({
    required OperatingMode mode,
  }) = _SetModeCommand;

  factory SetModeCommand.fromJson(Map<String, dynamic> json) =>
      _$SetModeCommandFromJson(json);
}

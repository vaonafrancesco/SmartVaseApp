// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'command_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CommandConfig _$CommandConfigFromJson(Map<String, dynamic> json) {
  return _CommandConfig.fromJson(json);
}

/// @nodoc
mixin _$CommandConfig {
  String get plantApiId => throw _privateConstructorUsedError;
  int get minLux => throw _privateConstructorUsedError;
  int get maxLux => throw _privateConstructorUsedError;
  int get targetSoilMoisture => throw _privateConstructorUsedError;

  /// Serializes this CommandConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommandConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommandConfigCopyWith<CommandConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommandConfigCopyWith<$Res> {
  factory $CommandConfigCopyWith(
    CommandConfig value,
    $Res Function(CommandConfig) then,
  ) = _$CommandConfigCopyWithImpl<$Res, CommandConfig>;
  @useResult
  $Res call({
    String plantApiId,
    int minLux,
    int maxLux,
    int targetSoilMoisture,
  });
}

/// @nodoc
class _$CommandConfigCopyWithImpl<$Res, $Val extends CommandConfig>
    implements $CommandConfigCopyWith<$Res> {
  _$CommandConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommandConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plantApiId = null,
    Object? minLux = null,
    Object? maxLux = null,
    Object? targetSoilMoisture = null,
  }) {
    return _then(
      _value.copyWith(
            plantApiId: null == plantApiId
                ? _value.plantApiId
                : plantApiId // ignore: cast_nullable_to_non_nullable
                      as String,
            minLux: null == minLux
                ? _value.minLux
                : minLux // ignore: cast_nullable_to_non_nullable
                      as int,
            maxLux: null == maxLux
                ? _value.maxLux
                : maxLux // ignore: cast_nullable_to_non_nullable
                      as int,
            targetSoilMoisture: null == targetSoilMoisture
                ? _value.targetSoilMoisture
                : targetSoilMoisture // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CommandConfigImplCopyWith<$Res>
    implements $CommandConfigCopyWith<$Res> {
  factory _$$CommandConfigImplCopyWith(
    _$CommandConfigImpl value,
    $Res Function(_$CommandConfigImpl) then,
  ) = __$$CommandConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String plantApiId,
    int minLux,
    int maxLux,
    int targetSoilMoisture,
  });
}

/// @nodoc
class __$$CommandConfigImplCopyWithImpl<$Res>
    extends _$CommandConfigCopyWithImpl<$Res, _$CommandConfigImpl>
    implements _$$CommandConfigImplCopyWith<$Res> {
  __$$CommandConfigImplCopyWithImpl(
    _$CommandConfigImpl _value,
    $Res Function(_$CommandConfigImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommandConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plantApiId = null,
    Object? minLux = null,
    Object? maxLux = null,
    Object? targetSoilMoisture = null,
  }) {
    return _then(
      _$CommandConfigImpl(
        plantApiId: null == plantApiId
            ? _value.plantApiId
            : plantApiId // ignore: cast_nullable_to_non_nullable
                  as String,
        minLux: null == minLux
            ? _value.minLux
            : minLux // ignore: cast_nullable_to_non_nullable
                  as int,
        maxLux: null == maxLux
            ? _value.maxLux
            : maxLux // ignore: cast_nullable_to_non_nullable
                  as int,
        targetSoilMoisture: null == targetSoilMoisture
            ? _value.targetSoilMoisture
            : targetSoilMoisture // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommandConfigImpl implements _CommandConfig {
  const _$CommandConfigImpl({
    required this.plantApiId,
    required this.minLux,
    required this.maxLux,
    required this.targetSoilMoisture,
  });

  factory _$CommandConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommandConfigImplFromJson(json);

  @override
  final String plantApiId;
  @override
  final int minLux;
  @override
  final int maxLux;
  @override
  final int targetSoilMoisture;

  @override
  String toString() {
    return 'CommandConfig(plantApiId: $plantApiId, minLux: $minLux, maxLux: $maxLux, targetSoilMoisture: $targetSoilMoisture)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommandConfigImpl &&
            (identical(other.plantApiId, plantApiId) ||
                other.plantApiId == plantApiId) &&
            (identical(other.minLux, minLux) || other.minLux == minLux) &&
            (identical(other.maxLux, maxLux) || other.maxLux == maxLux) &&
            (identical(other.targetSoilMoisture, targetSoilMoisture) ||
                other.targetSoilMoisture == targetSoilMoisture));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, plantApiId, minLux, maxLux, targetSoilMoisture);

  /// Create a copy of CommandConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommandConfigImplCopyWith<_$CommandConfigImpl> get copyWith =>
      __$$CommandConfigImplCopyWithImpl<_$CommandConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommandConfigImplToJson(this);
  }
}

abstract class _CommandConfig implements CommandConfig {
  const factory _CommandConfig({
    required final String plantApiId,
    required final int minLux,
    required final int maxLux,
    required final int targetSoilMoisture,
  }) = _$CommandConfigImpl;

  factory _CommandConfig.fromJson(Map<String, dynamic> json) =
      _$CommandConfigImpl.fromJson;

  @override
  String get plantApiId;
  @override
  int get minLux;
  @override
  int get maxLux;
  @override
  int get targetSoilMoisture;

  /// Create a copy of CommandConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommandConfigImplCopyWith<_$CommandConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WaterCommand _$WaterCommandFromJson(Map<String, dynamic> json) {
  return _WaterCommand.fromJson(json);
}

/// @nodoc
mixin _$WaterCommand {
  int get durationMs => throw _privateConstructorUsedError;

  /// Serializes this WaterCommand to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WaterCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WaterCommandCopyWith<WaterCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaterCommandCopyWith<$Res> {
  factory $WaterCommandCopyWith(
    WaterCommand value,
    $Res Function(WaterCommand) then,
  ) = _$WaterCommandCopyWithImpl<$Res, WaterCommand>;
  @useResult
  $Res call({int durationMs});
}

/// @nodoc
class _$WaterCommandCopyWithImpl<$Res, $Val extends WaterCommand>
    implements $WaterCommandCopyWith<$Res> {
  _$WaterCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WaterCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? durationMs = null}) {
    return _then(
      _value.copyWith(
            durationMs: null == durationMs
                ? _value.durationMs
                : durationMs // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WaterCommandImplCopyWith<$Res>
    implements $WaterCommandCopyWith<$Res> {
  factory _$$WaterCommandImplCopyWith(
    _$WaterCommandImpl value,
    $Res Function(_$WaterCommandImpl) then,
  ) = __$$WaterCommandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int durationMs});
}

/// @nodoc
class __$$WaterCommandImplCopyWithImpl<$Res>
    extends _$WaterCommandCopyWithImpl<$Res, _$WaterCommandImpl>
    implements _$$WaterCommandImplCopyWith<$Res> {
  __$$WaterCommandImplCopyWithImpl(
    _$WaterCommandImpl _value,
    $Res Function(_$WaterCommandImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WaterCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? durationMs = null}) {
    return _then(
      _$WaterCommandImpl(
        durationMs: null == durationMs
            ? _value.durationMs
            : durationMs // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WaterCommandImpl implements _WaterCommand {
  const _$WaterCommandImpl({required this.durationMs});

  factory _$WaterCommandImpl.fromJson(Map<String, dynamic> json) =>
      _$$WaterCommandImplFromJson(json);

  @override
  final int durationMs;

  @override
  String toString() {
    return 'WaterCommand(durationMs: $durationMs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaterCommandImpl &&
            (identical(other.durationMs, durationMs) ||
                other.durationMs == durationMs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, durationMs);

  /// Create a copy of WaterCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WaterCommandImplCopyWith<_$WaterCommandImpl> get copyWith =>
      __$$WaterCommandImplCopyWithImpl<_$WaterCommandImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WaterCommandImplToJson(this);
  }
}

abstract class _WaterCommand implements WaterCommand {
  const factory _WaterCommand({required final int durationMs}) =
      _$WaterCommandImpl;

  factory _WaterCommand.fromJson(Map<String, dynamic> json) =
      _$WaterCommandImpl.fromJson;

  @override
  int get durationMs;

  /// Create a copy of WaterCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WaterCommandImplCopyWith<_$WaterCommandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SetModeCommand _$SetModeCommandFromJson(Map<String, dynamic> json) {
  return _SetModeCommand.fromJson(json);
}

/// @nodoc
mixin _$SetModeCommand {
  OperatingMode get mode => throw _privateConstructorUsedError;

  /// Serializes this SetModeCommand to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SetModeCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SetModeCommandCopyWith<SetModeCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetModeCommandCopyWith<$Res> {
  factory $SetModeCommandCopyWith(
    SetModeCommand value,
    $Res Function(SetModeCommand) then,
  ) = _$SetModeCommandCopyWithImpl<$Res, SetModeCommand>;
  @useResult
  $Res call({OperatingMode mode});
}

/// @nodoc
class _$SetModeCommandCopyWithImpl<$Res, $Val extends SetModeCommand>
    implements $SetModeCommandCopyWith<$Res> {
  _$SetModeCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SetModeCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? mode = null}) {
    return _then(
      _value.copyWith(
            mode: null == mode
                ? _value.mode
                : mode // ignore: cast_nullable_to_non_nullable
                      as OperatingMode,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SetModeCommandImplCopyWith<$Res>
    implements $SetModeCommandCopyWith<$Res> {
  factory _$$SetModeCommandImplCopyWith(
    _$SetModeCommandImpl value,
    $Res Function(_$SetModeCommandImpl) then,
  ) = __$$SetModeCommandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OperatingMode mode});
}

/// @nodoc
class __$$SetModeCommandImplCopyWithImpl<$Res>
    extends _$SetModeCommandCopyWithImpl<$Res, _$SetModeCommandImpl>
    implements _$$SetModeCommandImplCopyWith<$Res> {
  __$$SetModeCommandImplCopyWithImpl(
    _$SetModeCommandImpl _value,
    $Res Function(_$SetModeCommandImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SetModeCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? mode = null}) {
    return _then(
      _$SetModeCommandImpl(
        mode: null == mode
            ? _value.mode
            : mode // ignore: cast_nullable_to_non_nullable
                  as OperatingMode,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SetModeCommandImpl implements _SetModeCommand {
  const _$SetModeCommandImpl({required this.mode});

  factory _$SetModeCommandImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetModeCommandImplFromJson(json);

  @override
  final OperatingMode mode;

  @override
  String toString() {
    return 'SetModeCommand(mode: $mode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetModeCommandImpl &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mode);

  /// Create a copy of SetModeCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetModeCommandImplCopyWith<_$SetModeCommandImpl> get copyWith =>
      __$$SetModeCommandImplCopyWithImpl<_$SetModeCommandImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SetModeCommandImplToJson(this);
  }
}

abstract class _SetModeCommand implements SetModeCommand {
  const factory _SetModeCommand({required final OperatingMode mode}) =
      _$SetModeCommandImpl;

  factory _SetModeCommand.fromJson(Map<String, dynamic> json) =
      _$SetModeCommandImpl.fromJson;

  @override
  OperatingMode get mode;

  /// Create a copy of SetModeCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetModeCommandImplCopyWith<_$SetModeCommandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

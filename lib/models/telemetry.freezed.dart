// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'telemetry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Counters _$CountersFromJson(Map<String, dynamic> json) {
  return _Counters.fromJson(json);
}

/// @nodoc
mixin _$Counters {
  int? get bmeReadErrors => throw _privateConstructorUsedError;
  int? get escapeAttempts => throw _privateConstructorUsedError;
  int? get lightSeekingSessions => throw _privateConstructorUsedError;
  int? get logOverflows => throw _privateConstructorUsedError;
  int? get obstaclesAvoided => throw _privateConstructorUsedError;
  int? get pbDecodeFailures => throw _privateConstructorUsedError;
  int? get shadowSeekingSessions => throw _privateConstructorUsedError;
  int? get stuckEvents => throw _privateConstructorUsedError;
  int? get totalIrrigationDurationS => throw _privateConstructorUsedError;
  int? get totalIrrigations => throw _privateConstructorUsedError;
  int? get totalMotorActiveTimeS => throw _privateConstructorUsedError;
  int? get watchdogResets => throw _privateConstructorUsedError;

  /// Serializes this Counters to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Counters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountersCopyWith<Counters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountersCopyWith<$Res> {
  factory $CountersCopyWith(Counters value, $Res Function(Counters) then) =
      _$CountersCopyWithImpl<$Res, Counters>;
  @useResult
  $Res call({
    int? bmeReadErrors,
    int? escapeAttempts,
    int? lightSeekingSessions,
    int? logOverflows,
    int? obstaclesAvoided,
    int? pbDecodeFailures,
    int? shadowSeekingSessions,
    int? stuckEvents,
    int? totalIrrigationDurationS,
    int? totalIrrigations,
    int? totalMotorActiveTimeS,
    int? watchdogResets,
  });
}

/// @nodoc
class _$CountersCopyWithImpl<$Res, $Val extends Counters>
    implements $CountersCopyWith<$Res> {
  _$CountersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Counters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bmeReadErrors = freezed,
    Object? escapeAttempts = freezed,
    Object? lightSeekingSessions = freezed,
    Object? logOverflows = freezed,
    Object? obstaclesAvoided = freezed,
    Object? pbDecodeFailures = freezed,
    Object? shadowSeekingSessions = freezed,
    Object? stuckEvents = freezed,
    Object? totalIrrigationDurationS = freezed,
    Object? totalIrrigations = freezed,
    Object? totalMotorActiveTimeS = freezed,
    Object? watchdogResets = freezed,
  }) {
    return _then(
      _value.copyWith(
            bmeReadErrors: freezed == bmeReadErrors
                ? _value.bmeReadErrors
                : bmeReadErrors // ignore: cast_nullable_to_non_nullable
                      as int?,
            escapeAttempts: freezed == escapeAttempts
                ? _value.escapeAttempts
                : escapeAttempts // ignore: cast_nullable_to_non_nullable
                      as int?,
            lightSeekingSessions: freezed == lightSeekingSessions
                ? _value.lightSeekingSessions
                : lightSeekingSessions // ignore: cast_nullable_to_non_nullable
                      as int?,
            logOverflows: freezed == logOverflows
                ? _value.logOverflows
                : logOverflows // ignore: cast_nullable_to_non_nullable
                      as int?,
            obstaclesAvoided: freezed == obstaclesAvoided
                ? _value.obstaclesAvoided
                : obstaclesAvoided // ignore: cast_nullable_to_non_nullable
                      as int?,
            pbDecodeFailures: freezed == pbDecodeFailures
                ? _value.pbDecodeFailures
                : pbDecodeFailures // ignore: cast_nullable_to_non_nullable
                      as int?,
            shadowSeekingSessions: freezed == shadowSeekingSessions
                ? _value.shadowSeekingSessions
                : shadowSeekingSessions // ignore: cast_nullable_to_non_nullable
                      as int?,
            stuckEvents: freezed == stuckEvents
                ? _value.stuckEvents
                : stuckEvents // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalIrrigationDurationS: freezed == totalIrrigationDurationS
                ? _value.totalIrrigationDurationS
                : totalIrrigationDurationS // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalIrrigations: freezed == totalIrrigations
                ? _value.totalIrrigations
                : totalIrrigations // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalMotorActiveTimeS: freezed == totalMotorActiveTimeS
                ? _value.totalMotorActiveTimeS
                : totalMotorActiveTimeS // ignore: cast_nullable_to_non_nullable
                      as int?,
            watchdogResets: freezed == watchdogResets
                ? _value.watchdogResets
                : watchdogResets // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CountersImplCopyWith<$Res>
    implements $CountersCopyWith<$Res> {
  factory _$$CountersImplCopyWith(
    _$CountersImpl value,
    $Res Function(_$CountersImpl) then,
  ) = __$$CountersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? bmeReadErrors,
    int? escapeAttempts,
    int? lightSeekingSessions,
    int? logOverflows,
    int? obstaclesAvoided,
    int? pbDecodeFailures,
    int? shadowSeekingSessions,
    int? stuckEvents,
    int? totalIrrigationDurationS,
    int? totalIrrigations,
    int? totalMotorActiveTimeS,
    int? watchdogResets,
  });
}

/// @nodoc
class __$$CountersImplCopyWithImpl<$Res>
    extends _$CountersCopyWithImpl<$Res, _$CountersImpl>
    implements _$$CountersImplCopyWith<$Res> {
  __$$CountersImplCopyWithImpl(
    _$CountersImpl _value,
    $Res Function(_$CountersImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Counters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bmeReadErrors = freezed,
    Object? escapeAttempts = freezed,
    Object? lightSeekingSessions = freezed,
    Object? logOverflows = freezed,
    Object? obstaclesAvoided = freezed,
    Object? pbDecodeFailures = freezed,
    Object? shadowSeekingSessions = freezed,
    Object? stuckEvents = freezed,
    Object? totalIrrigationDurationS = freezed,
    Object? totalIrrigations = freezed,
    Object? totalMotorActiveTimeS = freezed,
    Object? watchdogResets = freezed,
  }) {
    return _then(
      _$CountersImpl(
        bmeReadErrors: freezed == bmeReadErrors
            ? _value.bmeReadErrors
            : bmeReadErrors // ignore: cast_nullable_to_non_nullable
                  as int?,
        escapeAttempts: freezed == escapeAttempts
            ? _value.escapeAttempts
            : escapeAttempts // ignore: cast_nullable_to_non_nullable
                  as int?,
        lightSeekingSessions: freezed == lightSeekingSessions
            ? _value.lightSeekingSessions
            : lightSeekingSessions // ignore: cast_nullable_to_non_nullable
                  as int?,
        logOverflows: freezed == logOverflows
            ? _value.logOverflows
            : logOverflows // ignore: cast_nullable_to_non_nullable
                  as int?,
        obstaclesAvoided: freezed == obstaclesAvoided
            ? _value.obstaclesAvoided
            : obstaclesAvoided // ignore: cast_nullable_to_non_nullable
                  as int?,
        pbDecodeFailures: freezed == pbDecodeFailures
            ? _value.pbDecodeFailures
            : pbDecodeFailures // ignore: cast_nullable_to_non_nullable
                  as int?,
        shadowSeekingSessions: freezed == shadowSeekingSessions
            ? _value.shadowSeekingSessions
            : shadowSeekingSessions // ignore: cast_nullable_to_non_nullable
                  as int?,
        stuckEvents: freezed == stuckEvents
            ? _value.stuckEvents
            : stuckEvents // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalIrrigationDurationS: freezed == totalIrrigationDurationS
            ? _value.totalIrrigationDurationS
            : totalIrrigationDurationS // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalIrrigations: freezed == totalIrrigations
            ? _value.totalIrrigations
            : totalIrrigations // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalMotorActiveTimeS: freezed == totalMotorActiveTimeS
            ? _value.totalMotorActiveTimeS
            : totalMotorActiveTimeS // ignore: cast_nullable_to_non_nullable
                  as int?,
        watchdogResets: freezed == watchdogResets
            ? _value.watchdogResets
            : watchdogResets // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CountersImpl implements _Counters {
  const _$CountersImpl({
    this.bmeReadErrors,
    this.escapeAttempts,
    this.lightSeekingSessions,
    this.logOverflows,
    this.obstaclesAvoided,
    this.pbDecodeFailures,
    this.shadowSeekingSessions,
    this.stuckEvents,
    this.totalIrrigationDurationS,
    this.totalIrrigations,
    this.totalMotorActiveTimeS,
    this.watchdogResets,
  });

  factory _$CountersImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountersImplFromJson(json);

  @override
  final int? bmeReadErrors;
  @override
  final int? escapeAttempts;
  @override
  final int? lightSeekingSessions;
  @override
  final int? logOverflows;
  @override
  final int? obstaclesAvoided;
  @override
  final int? pbDecodeFailures;
  @override
  final int? shadowSeekingSessions;
  @override
  final int? stuckEvents;
  @override
  final int? totalIrrigationDurationS;
  @override
  final int? totalIrrigations;
  @override
  final int? totalMotorActiveTimeS;
  @override
  final int? watchdogResets;

  @override
  String toString() {
    return 'Counters(bmeReadErrors: $bmeReadErrors, escapeAttempts: $escapeAttempts, lightSeekingSessions: $lightSeekingSessions, logOverflows: $logOverflows, obstaclesAvoided: $obstaclesAvoided, pbDecodeFailures: $pbDecodeFailures, shadowSeekingSessions: $shadowSeekingSessions, stuckEvents: $stuckEvents, totalIrrigationDurationS: $totalIrrigationDurationS, totalIrrigations: $totalIrrigations, totalMotorActiveTimeS: $totalMotorActiveTimeS, watchdogResets: $watchdogResets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountersImpl &&
            (identical(other.bmeReadErrors, bmeReadErrors) ||
                other.bmeReadErrors == bmeReadErrors) &&
            (identical(other.escapeAttempts, escapeAttempts) ||
                other.escapeAttempts == escapeAttempts) &&
            (identical(other.lightSeekingSessions, lightSeekingSessions) ||
                other.lightSeekingSessions == lightSeekingSessions) &&
            (identical(other.logOverflows, logOverflows) ||
                other.logOverflows == logOverflows) &&
            (identical(other.obstaclesAvoided, obstaclesAvoided) ||
                other.obstaclesAvoided == obstaclesAvoided) &&
            (identical(other.pbDecodeFailures, pbDecodeFailures) ||
                other.pbDecodeFailures == pbDecodeFailures) &&
            (identical(other.shadowSeekingSessions, shadowSeekingSessions) ||
                other.shadowSeekingSessions == shadowSeekingSessions) &&
            (identical(other.stuckEvents, stuckEvents) ||
                other.stuckEvents == stuckEvents) &&
            (identical(
                  other.totalIrrigationDurationS,
                  totalIrrigationDurationS,
                ) ||
                other.totalIrrigationDurationS == totalIrrigationDurationS) &&
            (identical(other.totalIrrigations, totalIrrigations) ||
                other.totalIrrigations == totalIrrigations) &&
            (identical(other.totalMotorActiveTimeS, totalMotorActiveTimeS) ||
                other.totalMotorActiveTimeS == totalMotorActiveTimeS) &&
            (identical(other.watchdogResets, watchdogResets) ||
                other.watchdogResets == watchdogResets));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    bmeReadErrors,
    escapeAttempts,
    lightSeekingSessions,
    logOverflows,
    obstaclesAvoided,
    pbDecodeFailures,
    shadowSeekingSessions,
    stuckEvents,
    totalIrrigationDurationS,
    totalIrrigations,
    totalMotorActiveTimeS,
    watchdogResets,
  );

  /// Create a copy of Counters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountersImplCopyWith<_$CountersImpl> get copyWith =>
      __$$CountersImplCopyWithImpl<_$CountersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountersImplToJson(this);
  }
}

abstract class _Counters implements Counters {
  const factory _Counters({
    final int? bmeReadErrors,
    final int? escapeAttempts,
    final int? lightSeekingSessions,
    final int? logOverflows,
    final int? obstaclesAvoided,
    final int? pbDecodeFailures,
    final int? shadowSeekingSessions,
    final int? stuckEvents,
    final int? totalIrrigationDurationS,
    final int? totalIrrigations,
    final int? totalMotorActiveTimeS,
    final int? watchdogResets,
  }) = _$CountersImpl;

  factory _Counters.fromJson(Map<String, dynamic> json) =
      _$CountersImpl.fromJson;

  @override
  int? get bmeReadErrors;
  @override
  int? get escapeAttempts;
  @override
  int? get lightSeekingSessions;
  @override
  int? get logOverflows;
  @override
  int? get obstaclesAvoided;
  @override
  int? get pbDecodeFailures;
  @override
  int? get shadowSeekingSessions;
  @override
  int? get stuckEvents;
  @override
  int? get totalIrrigationDurationS;
  @override
  int? get totalIrrigations;
  @override
  int? get totalMotorActiveTimeS;
  @override
  int? get watchdogResets;

  /// Create a copy of Counters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountersImplCopyWith<_$CountersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DistancesCm _$DistancesCmFromJson(Map<String, dynamic> json) {
  return _DistancesCm.fromJson(json);
}

/// @nodoc
mixin _$DistancesCm {
  double? get frontLeft => throw _privateConstructorUsedError;
  double? get frontRight => throw _privateConstructorUsedError;
  int? get left => throw _privateConstructorUsedError;
  double? get right => throw _privateConstructorUsedError;
  double? get top => throw _privateConstructorUsedError;

  /// Serializes this DistancesCm to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DistancesCm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DistancesCmCopyWith<DistancesCm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistancesCmCopyWith<$Res> {
  factory $DistancesCmCopyWith(
    DistancesCm value,
    $Res Function(DistancesCm) then,
  ) = _$DistancesCmCopyWithImpl<$Res, DistancesCm>;
  @useResult
  $Res call({
    double? frontLeft,
    double? frontRight,
    int? left,
    double? right,
    double? top,
  });
}

/// @nodoc
class _$DistancesCmCopyWithImpl<$Res, $Val extends DistancesCm>
    implements $DistancesCmCopyWith<$Res> {
  _$DistancesCmCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DistancesCm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontLeft = freezed,
    Object? frontRight = freezed,
    Object? left = freezed,
    Object? right = freezed,
    Object? top = freezed,
  }) {
    return _then(
      _value.copyWith(
            frontLeft: freezed == frontLeft
                ? _value.frontLeft
                : frontLeft // ignore: cast_nullable_to_non_nullable
                      as double?,
            frontRight: freezed == frontRight
                ? _value.frontRight
                : frontRight // ignore: cast_nullable_to_non_nullable
                      as double?,
            left: freezed == left
                ? _value.left
                : left // ignore: cast_nullable_to_non_nullable
                      as int?,
            right: freezed == right
                ? _value.right
                : right // ignore: cast_nullable_to_non_nullable
                      as double?,
            top: freezed == top
                ? _value.top
                : top // ignore: cast_nullable_to_non_nullable
                      as double?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DistancesCmImplCopyWith<$Res>
    implements $DistancesCmCopyWith<$Res> {
  factory _$$DistancesCmImplCopyWith(
    _$DistancesCmImpl value,
    $Res Function(_$DistancesCmImpl) then,
  ) = __$$DistancesCmImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double? frontLeft,
    double? frontRight,
    int? left,
    double? right,
    double? top,
  });
}

/// @nodoc
class __$$DistancesCmImplCopyWithImpl<$Res>
    extends _$DistancesCmCopyWithImpl<$Res, _$DistancesCmImpl>
    implements _$$DistancesCmImplCopyWith<$Res> {
  __$$DistancesCmImplCopyWithImpl(
    _$DistancesCmImpl _value,
    $Res Function(_$DistancesCmImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DistancesCm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontLeft = freezed,
    Object? frontRight = freezed,
    Object? left = freezed,
    Object? right = freezed,
    Object? top = freezed,
  }) {
    return _then(
      _$DistancesCmImpl(
        frontLeft: freezed == frontLeft
            ? _value.frontLeft
            : frontLeft // ignore: cast_nullable_to_non_nullable
                  as double?,
        frontRight: freezed == frontRight
            ? _value.frontRight
            : frontRight // ignore: cast_nullable_to_non_nullable
                  as double?,
        left: freezed == left
            ? _value.left
            : left // ignore: cast_nullable_to_non_nullable
                  as int?,
        right: freezed == right
            ? _value.right
            : right // ignore: cast_nullable_to_non_nullable
                  as double?,
        top: freezed == top
            ? _value.top
            : top // ignore: cast_nullable_to_non_nullable
                  as double?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DistancesCmImpl implements _DistancesCm {
  const _$DistancesCmImpl({
    this.frontLeft,
    this.frontRight,
    this.left,
    this.right,
    this.top,
  });

  factory _$DistancesCmImpl.fromJson(Map<String, dynamic> json) =>
      _$$DistancesCmImplFromJson(json);

  @override
  final double? frontLeft;
  @override
  final double? frontRight;
  @override
  final int? left;
  @override
  final double? right;
  @override
  final double? top;

  @override
  String toString() {
    return 'DistancesCm(frontLeft: $frontLeft, frontRight: $frontRight, left: $left, right: $right, top: $top)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistancesCmImpl &&
            (identical(other.frontLeft, frontLeft) ||
                other.frontLeft == frontLeft) &&
            (identical(other.frontRight, frontRight) ||
                other.frontRight == frontRight) &&
            (identical(other.left, left) || other.left == left) &&
            (identical(other.right, right) || other.right == right) &&
            (identical(other.top, top) || other.top == top));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, frontLeft, frontRight, left, right, top);

  /// Create a copy of DistancesCm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DistancesCmImplCopyWith<_$DistancesCmImpl> get copyWith =>
      __$$DistancesCmImplCopyWithImpl<_$DistancesCmImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DistancesCmImplToJson(this);
  }
}

abstract class _DistancesCm implements DistancesCm {
  const factory _DistancesCm({
    final double? frontLeft,
    final double? frontRight,
    final int? left,
    final double? right,
    final double? top,
  }) = _$DistancesCmImpl;

  factory _DistancesCm.fromJson(Map<String, dynamic> json) =
      _$DistancesCmImpl.fromJson;

  @override
  double? get frontLeft;
  @override
  double? get frontRight;
  @override
  int? get left;
  @override
  double? get right;
  @override
  double? get top;

  /// Create a copy of DistancesCm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DistancesCmImplCopyWith<_$DistancesCmImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Telemetry _$TelemetryFromJson(Map<String, dynamic> json) {
  return _Telemetry.fromJson(json);
}

/// @nodoc
mixin _$Telemetry {
  /// Device info
  String? get deviceId => throw _privateConstructorUsedError;
  String? get fwVersion => throw _privateConstructorUsedError;

  /// Base fields
  int? get timestampUtc => throw _privateConstructorUsedError;
  int? get uptimeS => throw _privateConstructorUsedError;
  int? get batteryVoltage => throw _privateConstructorUsedError;
  int? get lux => throw _privateConstructorUsedError;
  MovementState? get movementState => throw _privateConstructorUsedError;

  /// Environmental sensors
  @JsonKey(name: 'humidity_percent')
  int? get humidityPercent => throw _privateConstructorUsedError;
  @JsonKey(name: 'pressure_hpa')
  int? get pressureHpa => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_c')
  int? get temperatureC => throw _privateConstructorUsedError;
  @JsonKey(name: 'gas_resistance_ohms')
  int? get gasResistanceOhms => throw _privateConstructorUsedError;
  @JsonKey(name: 'soil_moisture')
  int? get soilMoisture => throw _privateConstructorUsedError;

  /// Navigation distances
  DistancesCm? get distancesCm => throw _privateConstructorUsedError;

  /// Fluid management
  @JsonKey(name: 'water_level_cm')
  double? get waterLevelCm => throw _privateConstructorUsedError;

  /// System status
  int? get freeRamBytes => throw _privateConstructorUsedError;

  /// Counters
  Counters? get counters => throw _privateConstructorUsedError;

  /// Serializes this Telemetry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Telemetry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TelemetryCopyWith<Telemetry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TelemetryCopyWith<$Res> {
  factory $TelemetryCopyWith(Telemetry value, $Res Function(Telemetry) then) =
      _$TelemetryCopyWithImpl<$Res, Telemetry>;
  @useResult
  $Res call({
    String? deviceId,
    String? fwVersion,
    int? timestampUtc,
    int? uptimeS,
    int? batteryVoltage,
    int? lux,
    MovementState? movementState,
    @JsonKey(name: 'humidity_percent') int? humidityPercent,
    @JsonKey(name: 'pressure_hpa') int? pressureHpa,
    @JsonKey(name: 'temperature_c') int? temperatureC,
    @JsonKey(name: 'gas_resistance_ohms') int? gasResistanceOhms,
    @JsonKey(name: 'soil_moisture') int? soilMoisture,
    DistancesCm? distancesCm,
    @JsonKey(name: 'water_level_cm') double? waterLevelCm,
    int? freeRamBytes,
    Counters? counters,
  });

  $DistancesCmCopyWith<$Res>? get distancesCm;
  $CountersCopyWith<$Res>? get counters;
}

/// @nodoc
class _$TelemetryCopyWithImpl<$Res, $Val extends Telemetry>
    implements $TelemetryCopyWith<$Res> {
  _$TelemetryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Telemetry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = freezed,
    Object? fwVersion = freezed,
    Object? timestampUtc = freezed,
    Object? uptimeS = freezed,
    Object? batteryVoltage = freezed,
    Object? lux = freezed,
    Object? movementState = freezed,
    Object? humidityPercent = freezed,
    Object? pressureHpa = freezed,
    Object? temperatureC = freezed,
    Object? gasResistanceOhms = freezed,
    Object? soilMoisture = freezed,
    Object? distancesCm = freezed,
    Object? waterLevelCm = freezed,
    Object? freeRamBytes = freezed,
    Object? counters = freezed,
  }) {
    return _then(
      _value.copyWith(
            deviceId: freezed == deviceId
                ? _value.deviceId
                : deviceId // ignore: cast_nullable_to_non_nullable
                      as String?,
            fwVersion: freezed == fwVersion
                ? _value.fwVersion
                : fwVersion // ignore: cast_nullable_to_non_nullable
                      as String?,
            timestampUtc: freezed == timestampUtc
                ? _value.timestampUtc
                : timestampUtc // ignore: cast_nullable_to_non_nullable
                      as int?,
            uptimeS: freezed == uptimeS
                ? _value.uptimeS
                : uptimeS // ignore: cast_nullable_to_non_nullable
                      as int?,
            batteryVoltage: freezed == batteryVoltage
                ? _value.batteryVoltage
                : batteryVoltage // ignore: cast_nullable_to_non_nullable
                      as int?,
            lux: freezed == lux
                ? _value.lux
                : lux // ignore: cast_nullable_to_non_nullable
                      as int?,
            movementState: freezed == movementState
                ? _value.movementState
                : movementState // ignore: cast_nullable_to_non_nullable
                      as MovementState?,
            humidityPercent: freezed == humidityPercent
                ? _value.humidityPercent
                : humidityPercent // ignore: cast_nullable_to_non_nullable
                      as int?,
            pressureHpa: freezed == pressureHpa
                ? _value.pressureHpa
                : pressureHpa // ignore: cast_nullable_to_non_nullable
                      as int?,
            temperatureC: freezed == temperatureC
                ? _value.temperatureC
                : temperatureC // ignore: cast_nullable_to_non_nullable
                      as int?,
            gasResistanceOhms: freezed == gasResistanceOhms
                ? _value.gasResistanceOhms
                : gasResistanceOhms // ignore: cast_nullable_to_non_nullable
                      as int?,
            soilMoisture: freezed == soilMoisture
                ? _value.soilMoisture
                : soilMoisture // ignore: cast_nullable_to_non_nullable
                      as int?,
            distancesCm: freezed == distancesCm
                ? _value.distancesCm
                : distancesCm // ignore: cast_nullable_to_non_nullable
                      as DistancesCm?,
            waterLevelCm: freezed == waterLevelCm
                ? _value.waterLevelCm
                : waterLevelCm // ignore: cast_nullable_to_non_nullable
                      as double?,
            freeRamBytes: freezed == freeRamBytes
                ? _value.freeRamBytes
                : freeRamBytes // ignore: cast_nullable_to_non_nullable
                      as int?,
            counters: freezed == counters
                ? _value.counters
                : counters // ignore: cast_nullable_to_non_nullable
                      as Counters?,
          )
          as $Val,
    );
  }

  /// Create a copy of Telemetry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DistancesCmCopyWith<$Res>? get distancesCm {
    if (_value.distancesCm == null) {
      return null;
    }

    return $DistancesCmCopyWith<$Res>(_value.distancesCm!, (value) {
      return _then(_value.copyWith(distancesCm: value) as $Val);
    });
  }

  /// Create a copy of Telemetry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CountersCopyWith<$Res>? get counters {
    if (_value.counters == null) {
      return null;
    }

    return $CountersCopyWith<$Res>(_value.counters!, (value) {
      return _then(_value.copyWith(counters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TelemetryImplCopyWith<$Res>
    implements $TelemetryCopyWith<$Res> {
  factory _$$TelemetryImplCopyWith(
    _$TelemetryImpl value,
    $Res Function(_$TelemetryImpl) then,
  ) = __$$TelemetryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? deviceId,
    String? fwVersion,
    int? timestampUtc,
    int? uptimeS,
    int? batteryVoltage,
    int? lux,
    MovementState? movementState,
    @JsonKey(name: 'humidity_percent') int? humidityPercent,
    @JsonKey(name: 'pressure_hpa') int? pressureHpa,
    @JsonKey(name: 'temperature_c') int? temperatureC,
    @JsonKey(name: 'gas_resistance_ohms') int? gasResistanceOhms,
    @JsonKey(name: 'soil_moisture') int? soilMoisture,
    DistancesCm? distancesCm,
    @JsonKey(name: 'water_level_cm') double? waterLevelCm,
    int? freeRamBytes,
    Counters? counters,
  });

  @override
  $DistancesCmCopyWith<$Res>? get distancesCm;
  @override
  $CountersCopyWith<$Res>? get counters;
}

/// @nodoc
class __$$TelemetryImplCopyWithImpl<$Res>
    extends _$TelemetryCopyWithImpl<$Res, _$TelemetryImpl>
    implements _$$TelemetryImplCopyWith<$Res> {
  __$$TelemetryImplCopyWithImpl(
    _$TelemetryImpl _value,
    $Res Function(_$TelemetryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Telemetry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = freezed,
    Object? fwVersion = freezed,
    Object? timestampUtc = freezed,
    Object? uptimeS = freezed,
    Object? batteryVoltage = freezed,
    Object? lux = freezed,
    Object? movementState = freezed,
    Object? humidityPercent = freezed,
    Object? pressureHpa = freezed,
    Object? temperatureC = freezed,
    Object? gasResistanceOhms = freezed,
    Object? soilMoisture = freezed,
    Object? distancesCm = freezed,
    Object? waterLevelCm = freezed,
    Object? freeRamBytes = freezed,
    Object? counters = freezed,
  }) {
    return _then(
      _$TelemetryImpl(
        deviceId: freezed == deviceId
            ? _value.deviceId
            : deviceId // ignore: cast_nullable_to_non_nullable
                  as String?,
        fwVersion: freezed == fwVersion
            ? _value.fwVersion
            : fwVersion // ignore: cast_nullable_to_non_nullable
                  as String?,
        timestampUtc: freezed == timestampUtc
            ? _value.timestampUtc
            : timestampUtc // ignore: cast_nullable_to_non_nullable
                  as int?,
        uptimeS: freezed == uptimeS
            ? _value.uptimeS
            : uptimeS // ignore: cast_nullable_to_non_nullable
                  as int?,
        batteryVoltage: freezed == batteryVoltage
            ? _value.batteryVoltage
            : batteryVoltage // ignore: cast_nullable_to_non_nullable
                  as int?,
        lux: freezed == lux
            ? _value.lux
            : lux // ignore: cast_nullable_to_non_nullable
                  as int?,
        movementState: freezed == movementState
            ? _value.movementState
            : movementState // ignore: cast_nullable_to_non_nullable
                  as MovementState?,
        humidityPercent: freezed == humidityPercent
            ? _value.humidityPercent
            : humidityPercent // ignore: cast_nullable_to_non_nullable
                  as int?,
        pressureHpa: freezed == pressureHpa
            ? _value.pressureHpa
            : pressureHpa // ignore: cast_nullable_to_non_nullable
                  as int?,
        temperatureC: freezed == temperatureC
            ? _value.temperatureC
            : temperatureC // ignore: cast_nullable_to_non_nullable
                  as int?,
        gasResistanceOhms: freezed == gasResistanceOhms
            ? _value.gasResistanceOhms
            : gasResistanceOhms // ignore: cast_nullable_to_non_nullable
                  as int?,
        soilMoisture: freezed == soilMoisture
            ? _value.soilMoisture
            : soilMoisture // ignore: cast_nullable_to_non_nullable
                  as int?,
        distancesCm: freezed == distancesCm
            ? _value.distancesCm
            : distancesCm // ignore: cast_nullable_to_non_nullable
                  as DistancesCm?,
        waterLevelCm: freezed == waterLevelCm
            ? _value.waterLevelCm
            : waterLevelCm // ignore: cast_nullable_to_non_nullable
                  as double?,
        freeRamBytes: freezed == freeRamBytes
            ? _value.freeRamBytes
            : freeRamBytes // ignore: cast_nullable_to_non_nullable
                  as int?,
        counters: freezed == counters
            ? _value.counters
            : counters // ignore: cast_nullable_to_non_nullable
                  as Counters?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TelemetryImpl implements _Telemetry {
  const _$TelemetryImpl({
    this.deviceId,
    this.fwVersion,
    this.timestampUtc,
    this.uptimeS,
    this.batteryVoltage,
    this.lux,
    this.movementState,
    @JsonKey(name: 'humidity_percent') this.humidityPercent,
    @JsonKey(name: 'pressure_hpa') this.pressureHpa,
    @JsonKey(name: 'temperature_c') this.temperatureC,
    @JsonKey(name: 'gas_resistance_ohms') this.gasResistanceOhms,
    @JsonKey(name: 'soil_moisture') this.soilMoisture,
    this.distancesCm,
    @JsonKey(name: 'water_level_cm') this.waterLevelCm,
    this.freeRamBytes,
    this.counters,
  });

  factory _$TelemetryImpl.fromJson(Map<String, dynamic> json) =>
      _$$TelemetryImplFromJson(json);

  /// Device info
  @override
  final String? deviceId;
  @override
  final String? fwVersion;

  /// Base fields
  @override
  final int? timestampUtc;
  @override
  final int? uptimeS;
  @override
  final int? batteryVoltage;
  @override
  final int? lux;
  @override
  final MovementState? movementState;

  /// Environmental sensors
  @override
  @JsonKey(name: 'humidity_percent')
  final int? humidityPercent;
  @override
  @JsonKey(name: 'pressure_hpa')
  final int? pressureHpa;
  @override
  @JsonKey(name: 'temperature_c')
  final int? temperatureC;
  @override
  @JsonKey(name: 'gas_resistance_ohms')
  final int? gasResistanceOhms;
  @override
  @JsonKey(name: 'soil_moisture')
  final int? soilMoisture;

  /// Navigation distances
  @override
  final DistancesCm? distancesCm;

  /// Fluid management
  @override
  @JsonKey(name: 'water_level_cm')
  final double? waterLevelCm;

  /// System status
  @override
  final int? freeRamBytes;

  /// Counters
  @override
  final Counters? counters;

  @override
  String toString() {
    return 'Telemetry(deviceId: $deviceId, fwVersion: $fwVersion, timestampUtc: $timestampUtc, uptimeS: $uptimeS, batteryVoltage: $batteryVoltage, lux: $lux, movementState: $movementState, humidityPercent: $humidityPercent, pressureHpa: $pressureHpa, temperatureC: $temperatureC, gasResistanceOhms: $gasResistanceOhms, soilMoisture: $soilMoisture, distancesCm: $distancesCm, waterLevelCm: $waterLevelCm, freeRamBytes: $freeRamBytes, counters: $counters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TelemetryImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.fwVersion, fwVersion) ||
                other.fwVersion == fwVersion) &&
            (identical(other.timestampUtc, timestampUtc) ||
                other.timestampUtc == timestampUtc) &&
            (identical(other.uptimeS, uptimeS) || other.uptimeS == uptimeS) &&
            (identical(other.batteryVoltage, batteryVoltage) ||
                other.batteryVoltage == batteryVoltage) &&
            (identical(other.lux, lux) || other.lux == lux) &&
            (identical(other.movementState, movementState) ||
                other.movementState == movementState) &&
            (identical(other.humidityPercent, humidityPercent) ||
                other.humidityPercent == humidityPercent) &&
            (identical(other.pressureHpa, pressureHpa) ||
                other.pressureHpa == pressureHpa) &&
            (identical(other.temperatureC, temperatureC) ||
                other.temperatureC == temperatureC) &&
            (identical(other.gasResistanceOhms, gasResistanceOhms) ||
                other.gasResistanceOhms == gasResistanceOhms) &&
            (identical(other.soilMoisture, soilMoisture) ||
                other.soilMoisture == soilMoisture) &&
            (identical(other.distancesCm, distancesCm) ||
                other.distancesCm == distancesCm) &&
            (identical(other.waterLevelCm, waterLevelCm) ||
                other.waterLevelCm == waterLevelCm) &&
            (identical(other.freeRamBytes, freeRamBytes) ||
                other.freeRamBytes == freeRamBytes) &&
            (identical(other.counters, counters) ||
                other.counters == counters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    deviceId,
    fwVersion,
    timestampUtc,
    uptimeS,
    batteryVoltage,
    lux,
    movementState,
    humidityPercent,
    pressureHpa,
    temperatureC,
    gasResistanceOhms,
    soilMoisture,
    distancesCm,
    waterLevelCm,
    freeRamBytes,
    counters,
  );

  /// Create a copy of Telemetry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TelemetryImplCopyWith<_$TelemetryImpl> get copyWith =>
      __$$TelemetryImplCopyWithImpl<_$TelemetryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TelemetryImplToJson(this);
  }
}

abstract class _Telemetry implements Telemetry {
  const factory _Telemetry({
    final String? deviceId,
    final String? fwVersion,
    final int? timestampUtc,
    final int? uptimeS,
    final int? batteryVoltage,
    final int? lux,
    final MovementState? movementState,
    @JsonKey(name: 'humidity_percent') final int? humidityPercent,
    @JsonKey(name: 'pressure_hpa') final int? pressureHpa,
    @JsonKey(name: 'temperature_c') final int? temperatureC,
    @JsonKey(name: 'gas_resistance_ohms') final int? gasResistanceOhms,
    @JsonKey(name: 'soil_moisture') final int? soilMoisture,
    final DistancesCm? distancesCm,
    @JsonKey(name: 'water_level_cm') final double? waterLevelCm,
    final int? freeRamBytes,
    final Counters? counters,
  }) = _$TelemetryImpl;

  factory _Telemetry.fromJson(Map<String, dynamic> json) =
      _$TelemetryImpl.fromJson;

  /// Device info
  @override
  String? get deviceId;
  @override
  String? get fwVersion;

  /// Base fields
  @override
  int? get timestampUtc;
  @override
  int? get uptimeS;
  @override
  int? get batteryVoltage;
  @override
  int? get lux;
  @override
  MovementState? get movementState;

  /// Environmental sensors
  @override
  @JsonKey(name: 'humidity_percent')
  int? get humidityPercent;
  @override
  @JsonKey(name: 'pressure_hpa')
  int? get pressureHpa;
  @override
  @JsonKey(name: 'temperature_c')
  int? get temperatureC;
  @override
  @JsonKey(name: 'gas_resistance_ohms')
  int? get gasResistanceOhms;
  @override
  @JsonKey(name: 'soil_moisture')
  int? get soilMoisture;

  /// Navigation distances
  @override
  DistancesCm? get distancesCm;

  /// Fluid management
  @override
  @JsonKey(name: 'water_level_cm')
  double? get waterLevelCm;

  /// System status
  @override
  int? get freeRamBytes;

  /// Counters
  @override
  Counters? get counters;

  /// Create a copy of Telemetry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TelemetryImplCopyWith<_$TelemetryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

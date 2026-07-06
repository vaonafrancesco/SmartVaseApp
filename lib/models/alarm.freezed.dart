// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alarm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Alarm _$AlarmFromJson(Map<String, dynamic> json) {
  return _Alarm.fromJson(json);
}

/// @nodoc
mixin _$Alarm {
  String get event => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;
  int get timestampUtc => throw _privateConstructorUsedError;

  /// Serializes this Alarm to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Alarm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AlarmCopyWith<Alarm> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlarmCopyWith<$Res> {
  factory $AlarmCopyWith(Alarm value, $Res Function(Alarm) then) =
      _$AlarmCopyWithImpl<$Res, Alarm>;
  @useResult
  $Res call({String event, String level, int timestampUtc});
}

/// @nodoc
class _$AlarmCopyWithImpl<$Res, $Val extends Alarm>
    implements $AlarmCopyWith<$Res> {
  _$AlarmCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Alarm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? level = null,
    Object? timestampUtc = null,
  }) {
    return _then(
      _value.copyWith(
            event: null == event
                ? _value.event
                : event // ignore: cast_nullable_to_non_nullable
                      as String,
            level: null == level
                ? _value.level
                : level // ignore: cast_nullable_to_non_nullable
                      as String,
            timestampUtc: null == timestampUtc
                ? _value.timestampUtc
                : timestampUtc // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AlarmImplCopyWith<$Res> implements $AlarmCopyWith<$Res> {
  factory _$$AlarmImplCopyWith(
    _$AlarmImpl value,
    $Res Function(_$AlarmImpl) then,
  ) = __$$AlarmImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String event, String level, int timestampUtc});
}

/// @nodoc
class __$$AlarmImplCopyWithImpl<$Res>
    extends _$AlarmCopyWithImpl<$Res, _$AlarmImpl>
    implements _$$AlarmImplCopyWith<$Res> {
  __$$AlarmImplCopyWithImpl(
    _$AlarmImpl _value,
    $Res Function(_$AlarmImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Alarm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? level = null,
    Object? timestampUtc = null,
  }) {
    return _then(
      _$AlarmImpl(
        event: null == event
            ? _value.event
            : event // ignore: cast_nullable_to_non_nullable
                  as String,
        level: null == level
            ? _value.level
            : level // ignore: cast_nullable_to_non_nullable
                  as String,
        timestampUtc: null == timestampUtc
            ? _value.timestampUtc
            : timestampUtc // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AlarmImpl implements _Alarm {
  const _$AlarmImpl({
    required this.event,
    required this.level,
    required this.timestampUtc,
  });

  factory _$AlarmImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlarmImplFromJson(json);

  @override
  final String event;
  @override
  final String level;
  @override
  final int timestampUtc;

  @override
  String toString() {
    return 'Alarm(event: $event, level: $level, timestampUtc: $timestampUtc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlarmImpl &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.timestampUtc, timestampUtc) ||
                other.timestampUtc == timestampUtc));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, event, level, timestampUtc);

  /// Create a copy of Alarm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlarmImplCopyWith<_$AlarmImpl> get copyWith =>
      __$$AlarmImplCopyWithImpl<_$AlarmImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlarmImplToJson(this);
  }
}

abstract class _Alarm implements Alarm {
  const factory _Alarm({
    required final String event,
    required final String level,
    required final int timestampUtc,
  }) = _$AlarmImpl;

  factory _Alarm.fromJson(Map<String, dynamic> json) = _$AlarmImpl.fromJson;

  @override
  String get event;
  @override
  String get level;
  @override
  int get timestampUtc;

  /// Create a copy of Alarm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlarmImplCopyWith<_$AlarmImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

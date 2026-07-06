// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'command_ack.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CommandAck _$CommandAckFromJson(Map<String, dynamic> json) {
  return _CommandAck.fromJson(json);
}

/// @nodoc
mixin _$CommandAck {
  String get status => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;
  int get cmdId => throw _privateConstructorUsedError;
  int? get value => throw _privateConstructorUsedError;

  /// Serializes this CommandAck to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommandAck
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommandAckCopyWith<CommandAck> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommandAckCopyWith<$Res> {
  factory $CommandAckCopyWith(
    CommandAck value,
    $Res Function(CommandAck) then,
  ) = _$CommandAckCopyWithImpl<$Res, CommandAck>;
  @useResult
  $Res call({String status, String detail, int cmdId, int? value});
}

/// @nodoc
class _$CommandAckCopyWithImpl<$Res, $Val extends CommandAck>
    implements $CommandAckCopyWith<$Res> {
  _$CommandAckCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommandAck
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? detail = null,
    Object? cmdId = null,
    Object? value = freezed,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            detail: null == detail
                ? _value.detail
                : detail // ignore: cast_nullable_to_non_nullable
                      as String,
            cmdId: null == cmdId
                ? _value.cmdId
                : cmdId // ignore: cast_nullable_to_non_nullable
                      as int,
            value: freezed == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CommandAckImplCopyWith<$Res>
    implements $CommandAckCopyWith<$Res> {
  factory _$$CommandAckImplCopyWith(
    _$CommandAckImpl value,
    $Res Function(_$CommandAckImpl) then,
  ) = __$$CommandAckImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String detail, int cmdId, int? value});
}

/// @nodoc
class __$$CommandAckImplCopyWithImpl<$Res>
    extends _$CommandAckCopyWithImpl<$Res, _$CommandAckImpl>
    implements _$$CommandAckImplCopyWith<$Res> {
  __$$CommandAckImplCopyWithImpl(
    _$CommandAckImpl _value,
    $Res Function(_$CommandAckImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommandAck
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? detail = null,
    Object? cmdId = null,
    Object? value = freezed,
  }) {
    return _then(
      _$CommandAckImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        detail: null == detail
            ? _value.detail
            : detail // ignore: cast_nullable_to_non_nullable
                  as String,
        cmdId: null == cmdId
            ? _value.cmdId
            : cmdId // ignore: cast_nullable_to_non_nullable
                  as int,
        value: freezed == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommandAckImpl implements _CommandAck {
  const _$CommandAckImpl({
    required this.status,
    required this.detail,
    required this.cmdId,
    this.value,
  });

  factory _$CommandAckImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommandAckImplFromJson(json);

  @override
  final String status;
  @override
  final String detail;
  @override
  final int cmdId;
  @override
  final int? value;

  @override
  String toString() {
    return 'CommandAck(status: $status, detail: $detail, cmdId: $cmdId, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommandAckImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.cmdId, cmdId) || other.cmdId == cmdId) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, detail, cmdId, value);

  /// Create a copy of CommandAck
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommandAckImplCopyWith<_$CommandAckImpl> get copyWith =>
      __$$CommandAckImplCopyWithImpl<_$CommandAckImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommandAckImplToJson(this);
  }
}

abstract class _CommandAck implements CommandAck {
  const factory _CommandAck({
    required final String status,
    required final String detail,
    required final int cmdId,
    final int? value,
  }) = _$CommandAckImpl;

  factory _CommandAck.fromJson(Map<String, dynamic> json) =
      _$CommandAckImpl.fromJson;

  @override
  String get status;
  @override
  String get detail;
  @override
  int get cmdId;
  @override
  int? get value;

  /// Create a copy of CommandAck
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommandAckImplCopyWith<_$CommandAckImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

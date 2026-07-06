// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vision_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

VisionResult _$VisionResultFromJson(Map<String, dynamic> json) {
  return _VisionResult.fromJson(json);
}

/// @nodoc
mixin _$VisionResult {
  /// Required fields
  int get schemaVersion => throw _privateConstructorUsedError;
  String get modelVersion => throw _privateConstructorUsedError;
  int get timestampUtc => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  FrameQuality get frameQuality => throw _privateConstructorUsedError;
  LeafHealth get leafHealth => throw _privateConstructorUsedError;

  /// Optional fields
  Map<String, dynamic>? get metrics => throw _privateConstructorUsedError;
  Map<String, dynamic>? get recommendations =>
      throw _privateConstructorUsedError;

  /// Serializes this VisionResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VisionResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VisionResultCopyWith<VisionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisionResultCopyWith<$Res> {
  factory $VisionResultCopyWith(
    VisionResult value,
    $Res Function(VisionResult) then,
  ) = _$VisionResultCopyWithImpl<$Res, VisionResult>;
  @useResult
  $Res call({
    int schemaVersion,
    String modelVersion,
    int timestampUtc,
    String imageUrl,
    FrameQuality frameQuality,
    LeafHealth leafHealth,
    Map<String, dynamic>? metrics,
    Map<String, dynamic>? recommendations,
  });
}

/// @nodoc
class _$VisionResultCopyWithImpl<$Res, $Val extends VisionResult>
    implements $VisionResultCopyWith<$Res> {
  _$VisionResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VisionResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schemaVersion = null,
    Object? modelVersion = null,
    Object? timestampUtc = null,
    Object? imageUrl = null,
    Object? frameQuality = null,
    Object? leafHealth = null,
    Object? metrics = freezed,
    Object? recommendations = freezed,
  }) {
    return _then(
      _value.copyWith(
            schemaVersion: null == schemaVersion
                ? _value.schemaVersion
                : schemaVersion // ignore: cast_nullable_to_non_nullable
                      as int,
            modelVersion: null == modelVersion
                ? _value.modelVersion
                : modelVersion // ignore: cast_nullable_to_non_nullable
                      as String,
            timestampUtc: null == timestampUtc
                ? _value.timestampUtc
                : timestampUtc // ignore: cast_nullable_to_non_nullable
                      as int,
            imageUrl: null == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            frameQuality: null == frameQuality
                ? _value.frameQuality
                : frameQuality // ignore: cast_nullable_to_non_nullable
                      as FrameQuality,
            leafHealth: null == leafHealth
                ? _value.leafHealth
                : leafHealth // ignore: cast_nullable_to_non_nullable
                      as LeafHealth,
            metrics: freezed == metrics
                ? _value.metrics
                : metrics // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
            recommendations: freezed == recommendations
                ? _value.recommendations
                : recommendations // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VisionResultImplCopyWith<$Res>
    implements $VisionResultCopyWith<$Res> {
  factory _$$VisionResultImplCopyWith(
    _$VisionResultImpl value,
    $Res Function(_$VisionResultImpl) then,
  ) = __$$VisionResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int schemaVersion,
    String modelVersion,
    int timestampUtc,
    String imageUrl,
    FrameQuality frameQuality,
    LeafHealth leafHealth,
    Map<String, dynamic>? metrics,
    Map<String, dynamic>? recommendations,
  });
}

/// @nodoc
class __$$VisionResultImplCopyWithImpl<$Res>
    extends _$VisionResultCopyWithImpl<$Res, _$VisionResultImpl>
    implements _$$VisionResultImplCopyWith<$Res> {
  __$$VisionResultImplCopyWithImpl(
    _$VisionResultImpl _value,
    $Res Function(_$VisionResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VisionResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schemaVersion = null,
    Object? modelVersion = null,
    Object? timestampUtc = null,
    Object? imageUrl = null,
    Object? frameQuality = null,
    Object? leafHealth = null,
    Object? metrics = freezed,
    Object? recommendations = freezed,
  }) {
    return _then(
      _$VisionResultImpl(
        schemaVersion: null == schemaVersion
            ? _value.schemaVersion
            : schemaVersion // ignore: cast_nullable_to_non_nullable
                  as int,
        modelVersion: null == modelVersion
            ? _value.modelVersion
            : modelVersion // ignore: cast_nullable_to_non_nullable
                  as String,
        timestampUtc: null == timestampUtc
            ? _value.timestampUtc
            : timestampUtc // ignore: cast_nullable_to_non_nullable
                  as int,
        imageUrl: null == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        frameQuality: null == frameQuality
            ? _value.frameQuality
            : frameQuality // ignore: cast_nullable_to_non_nullable
                  as FrameQuality,
        leafHealth: null == leafHealth
            ? _value.leafHealth
            : leafHealth // ignore: cast_nullable_to_non_nullable
                  as LeafHealth,
        metrics: freezed == metrics
            ? _value._metrics
            : metrics // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        recommendations: freezed == recommendations
            ? _value._recommendations
            : recommendations // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$VisionResultImpl implements _VisionResult {
  const _$VisionResultImpl({
    required this.schemaVersion,
    required this.modelVersion,
    required this.timestampUtc,
    required this.imageUrl,
    required this.frameQuality,
    required this.leafHealth,
    final Map<String, dynamic>? metrics,
    final Map<String, dynamic>? recommendations,
  }) : _metrics = metrics,
       _recommendations = recommendations;

  factory _$VisionResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$VisionResultImplFromJson(json);

  /// Required fields
  @override
  final int schemaVersion;
  @override
  final String modelVersion;
  @override
  final int timestampUtc;
  @override
  final String imageUrl;
  @override
  final FrameQuality frameQuality;
  @override
  final LeafHealth leafHealth;

  /// Optional fields
  final Map<String, dynamic>? _metrics;

  /// Optional fields
  @override
  Map<String, dynamic>? get metrics {
    final value = _metrics;
    if (value == null) return null;
    if (_metrics is EqualUnmodifiableMapView) return _metrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _recommendations;
  @override
  Map<String, dynamic>? get recommendations {
    final value = _recommendations;
    if (value == null) return null;
    if (_recommendations is EqualUnmodifiableMapView) return _recommendations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'VisionResult(schemaVersion: $schemaVersion, modelVersion: $modelVersion, timestampUtc: $timestampUtc, imageUrl: $imageUrl, frameQuality: $frameQuality, leafHealth: $leafHealth, metrics: $metrics, recommendations: $recommendations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisionResultImpl &&
            (identical(other.schemaVersion, schemaVersion) ||
                other.schemaVersion == schemaVersion) &&
            (identical(other.modelVersion, modelVersion) ||
                other.modelVersion == modelVersion) &&
            (identical(other.timestampUtc, timestampUtc) ||
                other.timestampUtc == timestampUtc) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.frameQuality, frameQuality) ||
                other.frameQuality == frameQuality) &&
            (identical(other.leafHealth, leafHealth) ||
                other.leafHealth == leafHealth) &&
            const DeepCollectionEquality().equals(other._metrics, _metrics) &&
            const DeepCollectionEquality().equals(
              other._recommendations,
              _recommendations,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    schemaVersion,
    modelVersion,
    timestampUtc,
    imageUrl,
    frameQuality,
    leafHealth,
    const DeepCollectionEquality().hash(_metrics),
    const DeepCollectionEquality().hash(_recommendations),
  );

  /// Create a copy of VisionResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisionResultImplCopyWith<_$VisionResultImpl> get copyWith =>
      __$$VisionResultImplCopyWithImpl<_$VisionResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VisionResultImplToJson(this);
  }
}

abstract class _VisionResult implements VisionResult {
  const factory _VisionResult({
    required final int schemaVersion,
    required final String modelVersion,
    required final int timestampUtc,
    required final String imageUrl,
    required final FrameQuality frameQuality,
    required final LeafHealth leafHealth,
    final Map<String, dynamic>? metrics,
    final Map<String, dynamic>? recommendations,
  }) = _$VisionResultImpl;

  factory _VisionResult.fromJson(Map<String, dynamic> json) =
      _$VisionResultImpl.fromJson;

  /// Required fields
  @override
  int get schemaVersion;
  @override
  String get modelVersion;
  @override
  int get timestampUtc;
  @override
  String get imageUrl;
  @override
  FrameQuality get frameQuality;
  @override
  LeafHealth get leafHealth;

  /// Optional fields
  @override
  Map<String, dynamic>? get metrics;
  @override
  Map<String, dynamic>? get recommendations;

  /// Create a copy of VisionResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisionResultImplCopyWith<_$VisionResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

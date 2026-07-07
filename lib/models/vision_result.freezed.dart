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
  @JsonKey(name: 'timestamp_utc')
  int? get timestampUtc => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'plant_healthy', fromJson: _plantHealthFromJson)
  PlantHealth? get plantHealthy => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_message')
  String? get statusMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'foliage_coverage', fromJson: _percentToDouble)
  double? get foliageCoverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'green_ratio', fromJson: _percentToDouble)
  double? get greenRatio => throw _privateConstructorUsedError;
  @JsonKey(name: 'brown_ratio', fromJson: _percentToDouble)
  double? get brownRatio => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'timestamp_utc') int? timestampUtc,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'plant_healthy', fromJson: _plantHealthFromJson)
    PlantHealth? plantHealthy,
    @JsonKey(name: 'status_message') String? statusMessage,
    @JsonKey(name: 'foliage_coverage', fromJson: _percentToDouble)
    double? foliageCoverage,
    @JsonKey(name: 'green_ratio', fromJson: _percentToDouble)
    double? greenRatio,
    @JsonKey(name: 'brown_ratio', fromJson: _percentToDouble)
    double? brownRatio,
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
    Object? timestampUtc = freezed,
    Object? imageUrl = freezed,
    Object? plantHealthy = freezed,
    Object? statusMessage = freezed,
    Object? foliageCoverage = freezed,
    Object? greenRatio = freezed,
    Object? brownRatio = freezed,
  }) {
    return _then(
      _value.copyWith(
            timestampUtc: freezed == timestampUtc
                ? _value.timestampUtc
                : timestampUtc // ignore: cast_nullable_to_non_nullable
                      as int?,
            imageUrl: freezed == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            plantHealthy: freezed == plantHealthy
                ? _value.plantHealthy
                : plantHealthy // ignore: cast_nullable_to_non_nullable
                      as PlantHealth?,
            statusMessage: freezed == statusMessage
                ? _value.statusMessage
                : statusMessage // ignore: cast_nullable_to_non_nullable
                      as String?,
            foliageCoverage: freezed == foliageCoverage
                ? _value.foliageCoverage
                : foliageCoverage // ignore: cast_nullable_to_non_nullable
                      as double?,
            greenRatio: freezed == greenRatio
                ? _value.greenRatio
                : greenRatio // ignore: cast_nullable_to_non_nullable
                      as double?,
            brownRatio: freezed == brownRatio
                ? _value.brownRatio
                : brownRatio // ignore: cast_nullable_to_non_nullable
                      as double?,
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
    @JsonKey(name: 'timestamp_utc') int? timestampUtc,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'plant_healthy', fromJson: _plantHealthFromJson)
    PlantHealth? plantHealthy,
    @JsonKey(name: 'status_message') String? statusMessage,
    @JsonKey(name: 'foliage_coverage', fromJson: _percentToDouble)
    double? foliageCoverage,
    @JsonKey(name: 'green_ratio', fromJson: _percentToDouble)
    double? greenRatio,
    @JsonKey(name: 'brown_ratio', fromJson: _percentToDouble)
    double? brownRatio,
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
    Object? timestampUtc = freezed,
    Object? imageUrl = freezed,
    Object? plantHealthy = freezed,
    Object? statusMessage = freezed,
    Object? foliageCoverage = freezed,
    Object? greenRatio = freezed,
    Object? brownRatio = freezed,
  }) {
    return _then(
      _$VisionResultImpl(
        timestampUtc: freezed == timestampUtc
            ? _value.timestampUtc
            : timestampUtc // ignore: cast_nullable_to_non_nullable
                  as int?,
        imageUrl: freezed == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        plantHealthy: freezed == plantHealthy
            ? _value.plantHealthy
            : plantHealthy // ignore: cast_nullable_to_non_nullable
                  as PlantHealth?,
        statusMessage: freezed == statusMessage
            ? _value.statusMessage
            : statusMessage // ignore: cast_nullable_to_non_nullable
                  as String?,
        foliageCoverage: freezed == foliageCoverage
            ? _value.foliageCoverage
            : foliageCoverage // ignore: cast_nullable_to_non_nullable
                  as double?,
        greenRatio: freezed == greenRatio
            ? _value.greenRatio
            : greenRatio // ignore: cast_nullable_to_non_nullable
                  as double?,
        brownRatio: freezed == brownRatio
            ? _value.brownRatio
            : brownRatio // ignore: cast_nullable_to_non_nullable
                  as double?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$VisionResultImpl implements _VisionResult {
  const _$VisionResultImpl({
    @JsonKey(name: 'timestamp_utc') this.timestampUtc,
    @JsonKey(name: 'image_url') this.imageUrl,
    @JsonKey(name: 'plant_healthy', fromJson: _plantHealthFromJson)
    this.plantHealthy,
    @JsonKey(name: 'status_message') this.statusMessage,
    @JsonKey(name: 'foliage_coverage', fromJson: _percentToDouble)
    this.foliageCoverage,
    @JsonKey(name: 'green_ratio', fromJson: _percentToDouble) this.greenRatio,
    @JsonKey(name: 'brown_ratio', fromJson: _percentToDouble) this.brownRatio,
  });

  factory _$VisionResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$VisionResultImplFromJson(json);

  @override
  @JsonKey(name: 'timestamp_utc')
  final int? timestampUtc;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  @JsonKey(name: 'plant_healthy', fromJson: _plantHealthFromJson)
  final PlantHealth? plantHealthy;
  @override
  @JsonKey(name: 'status_message')
  final String? statusMessage;
  @override
  @JsonKey(name: 'foliage_coverage', fromJson: _percentToDouble)
  final double? foliageCoverage;
  @override
  @JsonKey(name: 'green_ratio', fromJson: _percentToDouble)
  final double? greenRatio;
  @override
  @JsonKey(name: 'brown_ratio', fromJson: _percentToDouble)
  final double? brownRatio;

  @override
  String toString() {
    return 'VisionResult(timestampUtc: $timestampUtc, imageUrl: $imageUrl, plantHealthy: $plantHealthy, statusMessage: $statusMessage, foliageCoverage: $foliageCoverage, greenRatio: $greenRatio, brownRatio: $brownRatio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisionResultImpl &&
            (identical(other.timestampUtc, timestampUtc) ||
                other.timestampUtc == timestampUtc) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.plantHealthy, plantHealthy) ||
                other.plantHealthy == plantHealthy) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage) &&
            (identical(other.foliageCoverage, foliageCoverage) ||
                other.foliageCoverage == foliageCoverage) &&
            (identical(other.greenRatio, greenRatio) ||
                other.greenRatio == greenRatio) &&
            (identical(other.brownRatio, brownRatio) ||
                other.brownRatio == brownRatio));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    timestampUtc,
    imageUrl,
    plantHealthy,
    statusMessage,
    foliageCoverage,
    greenRatio,
    brownRatio,
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
    @JsonKey(name: 'timestamp_utc') final int? timestampUtc,
    @JsonKey(name: 'image_url') final String? imageUrl,
    @JsonKey(name: 'plant_healthy', fromJson: _plantHealthFromJson)
    final PlantHealth? plantHealthy,
    @JsonKey(name: 'status_message') final String? statusMessage,
    @JsonKey(name: 'foliage_coverage', fromJson: _percentToDouble)
    final double? foliageCoverage,
    @JsonKey(name: 'green_ratio', fromJson: _percentToDouble)
    final double? greenRatio,
    @JsonKey(name: 'brown_ratio', fromJson: _percentToDouble)
    final double? brownRatio,
  }) = _$VisionResultImpl;

  factory _VisionResult.fromJson(Map<String, dynamic> json) =
      _$VisionResultImpl.fromJson;

  @override
  @JsonKey(name: 'timestamp_utc')
  int? get timestampUtc;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  @JsonKey(name: 'plant_healthy', fromJson: _plantHealthFromJson)
  PlantHealth? get plantHealthy;
  @override
  @JsonKey(name: 'status_message')
  String? get statusMessage;
  @override
  @JsonKey(name: 'foliage_coverage', fromJson: _percentToDouble)
  double? get foliageCoverage;
  @override
  @JsonKey(name: 'green_ratio', fromJson: _percentToDouble)
  double? get greenRatio;
  @override
  @JsonKey(name: 'brown_ratio', fromJson: _percentToDouble)
  double? get brownRatio;

  /// Create a copy of VisionResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisionResultImplCopyWith<_$VisionResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageData _$ImageDataFromJson(Map<String, dynamic> json) {
  return _ImageData.fromJson(json);
}

/// @nodoc
mixin _$ImageData {
  List<ImageDataItem>? get backdrops => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  List<ImageDataItem>? get logos => throw _privateConstructorUsedError;
  List<ImageDataItem>? get posters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageDataCopyWith<ImageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDataCopyWith<$Res> {
  factory $ImageDataCopyWith(ImageData value, $Res Function(ImageData) then) =
      _$ImageDataCopyWithImpl<$Res, ImageData>;
  @useResult
  $Res call(
      {List<ImageDataItem>? backdrops,
      int? id,
      List<ImageDataItem>? logos,
      List<ImageDataItem>? posters});
}

/// @nodoc
class _$ImageDataCopyWithImpl<$Res, $Val extends ImageData>
    implements $ImageDataCopyWith<$Res> {
  _$ImageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdrops = freezed,
    Object? id = freezed,
    Object? logos = freezed,
    Object? posters = freezed,
  }) {
    return _then(_value.copyWith(
      backdrops: freezed == backdrops
          ? _value.backdrops
          : backdrops // ignore: cast_nullable_to_non_nullable
              as List<ImageDataItem>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      logos: freezed == logos
          ? _value.logos
          : logos // ignore: cast_nullable_to_non_nullable
              as List<ImageDataItem>?,
      posters: freezed == posters
          ? _value.posters
          : posters // ignore: cast_nullable_to_non_nullable
              as List<ImageDataItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageDataImplCopyWith<$Res>
    implements $ImageDataCopyWith<$Res> {
  factory _$$ImageDataImplCopyWith(
          _$ImageDataImpl value, $Res Function(_$ImageDataImpl) then) =
      __$$ImageDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ImageDataItem>? backdrops,
      int? id,
      List<ImageDataItem>? logos,
      List<ImageDataItem>? posters});
}

/// @nodoc
class __$$ImageDataImplCopyWithImpl<$Res>
    extends _$ImageDataCopyWithImpl<$Res, _$ImageDataImpl>
    implements _$$ImageDataImplCopyWith<$Res> {
  __$$ImageDataImplCopyWithImpl(
      _$ImageDataImpl _value, $Res Function(_$ImageDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdrops = freezed,
    Object? id = freezed,
    Object? logos = freezed,
    Object? posters = freezed,
  }) {
    return _then(_$ImageDataImpl(
      backdrops: freezed == backdrops
          ? _value._backdrops
          : backdrops // ignore: cast_nullable_to_non_nullable
              as List<ImageDataItem>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      logos: freezed == logos
          ? _value._logos
          : logos // ignore: cast_nullable_to_non_nullable
              as List<ImageDataItem>?,
      posters: freezed == posters
          ? _value._posters
          : posters // ignore: cast_nullable_to_non_nullable
              as List<ImageDataItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageDataImpl implements _ImageData {
  const _$ImageDataImpl(
      {final List<ImageDataItem>? backdrops,
      this.id,
      final List<ImageDataItem>? logos,
      final List<ImageDataItem>? posters})
      : _backdrops = backdrops,
        _logos = logos,
        _posters = posters;

  factory _$ImageDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageDataImplFromJson(json);

  final List<ImageDataItem>? _backdrops;
  @override
  List<ImageDataItem>? get backdrops {
    final value = _backdrops;
    if (value == null) return null;
    if (_backdrops is EqualUnmodifiableListView) return _backdrops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? id;
  final List<ImageDataItem>? _logos;
  @override
  List<ImageDataItem>? get logos {
    final value = _logos;
    if (value == null) return null;
    if (_logos is EqualUnmodifiableListView) return _logos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ImageDataItem>? _posters;
  @override
  List<ImageDataItem>? get posters {
    final value = _posters;
    if (value == null) return null;
    if (_posters is EqualUnmodifiableListView) return _posters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ImageData(backdrops: $backdrops, id: $id, logos: $logos, posters: $posters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageDataImpl &&
            const DeepCollectionEquality()
                .equals(other._backdrops, _backdrops) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._logos, _logos) &&
            const DeepCollectionEquality().equals(other._posters, _posters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_backdrops),
      id,
      const DeepCollectionEquality().hash(_logos),
      const DeepCollectionEquality().hash(_posters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageDataImplCopyWith<_$ImageDataImpl> get copyWith =>
      __$$ImageDataImplCopyWithImpl<_$ImageDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageDataImplToJson(
      this,
    );
  }
}

abstract class _ImageData implements ImageData {
  const factory _ImageData(
      {final List<ImageDataItem>? backdrops,
      final int? id,
      final List<ImageDataItem>? logos,
      final List<ImageDataItem>? posters}) = _$ImageDataImpl;

  factory _ImageData.fromJson(Map<String, dynamic> json) =
      _$ImageDataImpl.fromJson;

  @override
  List<ImageDataItem>? get backdrops;
  @override
  int? get id;
  @override
  List<ImageDataItem>? get logos;
  @override
  List<ImageDataItem>? get posters;
  @override
  @JsonKey(ignore: true)
  _$$ImageDataImplCopyWith<_$ImageDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageDataItem _$ImageDataItemFromJson(Map<String, dynamic> json) {
  return _ImageDataItem.fromJson(json);
}

/// @nodoc
mixin _$ImageDataItem {
  double? get aspectRatio => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'iso_639_1')
  String? get iso6391 => throw _privateConstructorUsedError;
  String? get filePath => throw _privateConstructorUsedError;
  double? get voteAverage => throw _privateConstructorUsedError;
  int? get voteCount => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageDataItemCopyWith<ImageDataItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDataItemCopyWith<$Res> {
  factory $ImageDataItemCopyWith(
          ImageDataItem value, $Res Function(ImageDataItem) then) =
      _$ImageDataItemCopyWithImpl<$Res, ImageDataItem>;
  @useResult
  $Res call(
      {double? aspectRatio,
      int? height,
      @JsonKey(name: 'iso_639_1') String? iso6391,
      String? filePath,
      double? voteAverage,
      int? voteCount,
      int? width});
}

/// @nodoc
class _$ImageDataItemCopyWithImpl<$Res, $Val extends ImageDataItem>
    implements $ImageDataItemCopyWith<$Res> {
  _$ImageDataItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aspectRatio = freezed,
    Object? height = freezed,
    Object? iso6391 = freezed,
    Object? filePath = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
    Object? width = freezed,
  }) {
    return _then(_value.copyWith(
      aspectRatio: freezed == aspectRatio
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      iso6391: freezed == iso6391
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
              as String?,
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageDataItemImplCopyWith<$Res>
    implements $ImageDataItemCopyWith<$Res> {
  factory _$$ImageDataItemImplCopyWith(
          _$ImageDataItemImpl value, $Res Function(_$ImageDataItemImpl) then) =
      __$$ImageDataItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? aspectRatio,
      int? height,
      @JsonKey(name: 'iso_639_1') String? iso6391,
      String? filePath,
      double? voteAverage,
      int? voteCount,
      int? width});
}

/// @nodoc
class __$$ImageDataItemImplCopyWithImpl<$Res>
    extends _$ImageDataItemCopyWithImpl<$Res, _$ImageDataItemImpl>
    implements _$$ImageDataItemImplCopyWith<$Res> {
  __$$ImageDataItemImplCopyWithImpl(
      _$ImageDataItemImpl _value, $Res Function(_$ImageDataItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aspectRatio = freezed,
    Object? height = freezed,
    Object? iso6391 = freezed,
    Object? filePath = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
    Object? width = freezed,
  }) {
    return _then(_$ImageDataItemImpl(
      aspectRatio: freezed == aspectRatio
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      iso6391: freezed == iso6391
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
              as String?,
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageDataItemImpl implements _ImageDataItem {
  const _$ImageDataItemImpl(
      {this.aspectRatio,
      this.height,
      @JsonKey(name: 'iso_639_1') this.iso6391,
      this.filePath,
      this.voteAverage,
      this.voteCount,
      this.width});

  factory _$ImageDataItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageDataItemImplFromJson(json);

  @override
  final double? aspectRatio;
  @override
  final int? height;
  @override
  @JsonKey(name: 'iso_639_1')
  final String? iso6391;
  @override
  final String? filePath;
  @override
  final double? voteAverage;
  @override
  final int? voteCount;
  @override
  final int? width;

  @override
  String toString() {
    return 'ImageDataItem(aspectRatio: $aspectRatio, height: $height, iso6391: $iso6391, filePath: $filePath, voteAverage: $voteAverage, voteCount: $voteCount, width: $width)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageDataItemImpl &&
            (identical(other.aspectRatio, aspectRatio) ||
                other.aspectRatio == aspectRatio) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.iso6391, iso6391) || other.iso6391 == iso6391) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, aspectRatio, height, iso6391,
      filePath, voteAverage, voteCount, width);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageDataItemImplCopyWith<_$ImageDataItemImpl> get copyWith =>
      __$$ImageDataItemImplCopyWithImpl<_$ImageDataItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageDataItemImplToJson(
      this,
    );
  }
}

abstract class _ImageDataItem implements ImageDataItem {
  const factory _ImageDataItem(
      {final double? aspectRatio,
      final int? height,
      @JsonKey(name: 'iso_639_1') final String? iso6391,
      final String? filePath,
      final double? voteAverage,
      final int? voteCount,
      final int? width}) = _$ImageDataItemImpl;

  factory _ImageDataItem.fromJson(Map<String, dynamic> json) =
      _$ImageDataItemImpl.fromJson;

  @override
  double? get aspectRatio;
  @override
  int? get height;
  @override
  @JsonKey(name: 'iso_639_1')
  String? get iso6391;
  @override
  String? get filePath;
  @override
  double? get voteAverage;
  @override
  int? get voteCount;
  @override
  int? get width;
  @override
  @JsonKey(ignore: true)
  _$$ImageDataItemImplCopyWith<_$ImageDataItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

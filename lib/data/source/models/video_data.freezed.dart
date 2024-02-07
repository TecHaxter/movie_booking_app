// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoData _$VideoDataFromJson(Map<String, dynamic> json) {
  return _VideoData.fromJson(json);
}

/// @nodoc
mixin _$VideoData {
  int? get id => throw _privateConstructorUsedError;
  List<VideoDataItem>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoDataCopyWith<VideoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoDataCopyWith<$Res> {
  factory $VideoDataCopyWith(VideoData value, $Res Function(VideoData) then) =
      _$VideoDataCopyWithImpl<$Res, VideoData>;
  @useResult
  $Res call({int? id, List<VideoDataItem>? results});
}

/// @nodoc
class _$VideoDataCopyWithImpl<$Res, $Val extends VideoData>
    implements $VideoDataCopyWith<$Res> {
  _$VideoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<VideoDataItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoDataImplCopyWith<$Res>
    implements $VideoDataCopyWith<$Res> {
  factory _$$VideoDataImplCopyWith(
          _$VideoDataImpl value, $Res Function(_$VideoDataImpl) then) =
      __$$VideoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, List<VideoDataItem>? results});
}

/// @nodoc
class __$$VideoDataImplCopyWithImpl<$Res>
    extends _$VideoDataCopyWithImpl<$Res, _$VideoDataImpl>
    implements _$$VideoDataImplCopyWith<$Res> {
  __$$VideoDataImplCopyWithImpl(
      _$VideoDataImpl _value, $Res Function(_$VideoDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? results = freezed,
  }) {
    return _then(_$VideoDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<VideoDataItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoDataImpl implements _VideoData {
  const _$VideoDataImpl({this.id, final List<VideoDataItem>? results})
      : _results = results;

  factory _$VideoDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoDataImplFromJson(json);

  @override
  final int? id;
  final List<VideoDataItem>? _results;
  @override
  List<VideoDataItem>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'VideoData(id: $id, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoDataImplCopyWith<_$VideoDataImpl> get copyWith =>
      __$$VideoDataImplCopyWithImpl<_$VideoDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoDataImplToJson(
      this,
    );
  }
}

abstract class _VideoData implements VideoData {
  const factory _VideoData(
      {final int? id, final List<VideoDataItem>? results}) = _$VideoDataImpl;

  factory _VideoData.fromJson(Map<String, dynamic> json) =
      _$VideoDataImpl.fromJson;

  @override
  int? get id;
  @override
  List<VideoDataItem>? get results;
  @override
  @JsonKey(ignore: true)
  _$$VideoDataImplCopyWith<_$VideoDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VideoDataItem _$VideoDataItemFromJson(Map<String, dynamic> json) {
  return _VideoDataItem.fromJson(json);
}

/// @nodoc
mixin _$VideoDataItem {
  @JsonKey(name: 'iso_639_1')
  String? get iso6391 => throw _privateConstructorUsedError;
  @JsonKey(name: 'iso_3166_1')
  String? get iso31661 => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;
  String? get site => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  bool? get official => throw _privateConstructorUsedError;
  String? get publishedAt => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoDataItemCopyWith<VideoDataItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoDataItemCopyWith<$Res> {
  factory $VideoDataItemCopyWith(
          VideoDataItem value, $Res Function(VideoDataItem) then) =
      _$VideoDataItemCopyWithImpl<$Res, VideoDataItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'iso_639_1') String? iso6391,
      @JsonKey(name: 'iso_3166_1') String? iso31661,
      String? name,
      String? key,
      String? site,
      int? size,
      String? type,
      bool? official,
      String? publishedAt,
      String? id});
}

/// @nodoc
class _$VideoDataItemCopyWithImpl<$Res, $Val extends VideoDataItem>
    implements $VideoDataItemCopyWith<$Res> {
  _$VideoDataItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iso6391 = freezed,
    Object? iso31661 = freezed,
    Object? name = freezed,
    Object? key = freezed,
    Object? site = freezed,
    Object? size = freezed,
    Object? type = freezed,
    Object? official = freezed,
    Object? publishedAt = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      iso6391: freezed == iso6391
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
              as String?,
      iso31661: freezed == iso31661
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      site: freezed == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      official: freezed == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as bool?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoDataItemImplCopyWith<$Res>
    implements $VideoDataItemCopyWith<$Res> {
  factory _$$VideoDataItemImplCopyWith(
          _$VideoDataItemImpl value, $Res Function(_$VideoDataItemImpl) then) =
      __$$VideoDataItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'iso_639_1') String? iso6391,
      @JsonKey(name: 'iso_3166_1') String? iso31661,
      String? name,
      String? key,
      String? site,
      int? size,
      String? type,
      bool? official,
      String? publishedAt,
      String? id});
}

/// @nodoc
class __$$VideoDataItemImplCopyWithImpl<$Res>
    extends _$VideoDataItemCopyWithImpl<$Res, _$VideoDataItemImpl>
    implements _$$VideoDataItemImplCopyWith<$Res> {
  __$$VideoDataItemImplCopyWithImpl(
      _$VideoDataItemImpl _value, $Res Function(_$VideoDataItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iso6391 = freezed,
    Object? iso31661 = freezed,
    Object? name = freezed,
    Object? key = freezed,
    Object? site = freezed,
    Object? size = freezed,
    Object? type = freezed,
    Object? official = freezed,
    Object? publishedAt = freezed,
    Object? id = freezed,
  }) {
    return _then(_$VideoDataItemImpl(
      iso6391: freezed == iso6391
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
              as String?,
      iso31661: freezed == iso31661
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      site: freezed == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      official: freezed == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as bool?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoDataItemImpl implements _VideoDataItem {
  const _$VideoDataItemImpl(
      {@JsonKey(name: 'iso_639_1') this.iso6391,
      @JsonKey(name: 'iso_3166_1') this.iso31661,
      this.name,
      this.key,
      this.site,
      this.size,
      this.type,
      this.official,
      this.publishedAt,
      this.id});

  factory _$VideoDataItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoDataItemImplFromJson(json);

  @override
  @JsonKey(name: 'iso_639_1')
  final String? iso6391;
  @override
  @JsonKey(name: 'iso_3166_1')
  final String? iso31661;
  @override
  final String? name;
  @override
  final String? key;
  @override
  final String? site;
  @override
  final int? size;
  @override
  final String? type;
  @override
  final bool? official;
  @override
  final String? publishedAt;
  @override
  final String? id;

  @override
  String toString() {
    return 'VideoDataItem(iso6391: $iso6391, iso31661: $iso31661, name: $name, key: $key, site: $site, size: $size, type: $type, official: $official, publishedAt: $publishedAt, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoDataItemImpl &&
            (identical(other.iso6391, iso6391) || other.iso6391 == iso6391) &&
            (identical(other.iso31661, iso31661) ||
                other.iso31661 == iso31661) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.site, site) || other.site == site) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.official, official) ||
                other.official == official) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iso6391, iso31661, name, key,
      site, size, type, official, publishedAt, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoDataItemImplCopyWith<_$VideoDataItemImpl> get copyWith =>
      __$$VideoDataItemImplCopyWithImpl<_$VideoDataItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoDataItemImplToJson(
      this,
    );
  }
}

abstract class _VideoDataItem implements VideoDataItem {
  const factory _VideoDataItem(
      {@JsonKey(name: 'iso_639_1') final String? iso6391,
      @JsonKey(name: 'iso_3166_1') final String? iso31661,
      final String? name,
      final String? key,
      final String? site,
      final int? size,
      final String? type,
      final bool? official,
      final String? publishedAt,
      final String? id}) = _$VideoDataItemImpl;

  factory _VideoDataItem.fromJson(Map<String, dynamic> json) =
      _$VideoDataItemImpl.fromJson;

  @override
  @JsonKey(name: 'iso_639_1')
  String? get iso6391;
  @override
  @JsonKey(name: 'iso_3166_1')
  String? get iso31661;
  @override
  String? get name;
  @override
  String? get key;
  @override
  String? get site;
  @override
  int? get size;
  @override
  String? get type;
  @override
  bool? get official;
  @override
  String? get publishedAt;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$VideoDataItemImplCopyWith<_$VideoDataItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

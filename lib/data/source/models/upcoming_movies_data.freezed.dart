// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upcoming_movies_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpcomingMoviesData _$UpcomingMoviesDataFromJson(Map<String, dynamic> json) {
  return _UpcomingMoviesData.fromJson(json);
}

/// @nodoc
mixin _$UpcomingMoviesData {
  Dates? get dates => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  List<MovieDetailsData>? get results => throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;
  int? get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpcomingMoviesDataCopyWith<UpcomingMoviesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcomingMoviesDataCopyWith<$Res> {
  factory $UpcomingMoviesDataCopyWith(
          UpcomingMoviesData value, $Res Function(UpcomingMoviesData) then) =
      _$UpcomingMoviesDataCopyWithImpl<$Res, UpcomingMoviesData>;
  @useResult
  $Res call(
      {Dates? dates,
      int? page,
      List<MovieDetailsData>? results,
      int? totalPages,
      int? totalResults});

  $DatesCopyWith<$Res>? get dates;
}

/// @nodoc
class _$UpcomingMoviesDataCopyWithImpl<$Res, $Val extends UpcomingMoviesData>
    implements $UpcomingMoviesDataCopyWith<$Res> {
  _$UpcomingMoviesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dates = freezed,
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_value.copyWith(
      dates: freezed == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as Dates?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieDetailsData>?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DatesCopyWith<$Res>? get dates {
    if (_value.dates == null) {
      return null;
    }

    return $DatesCopyWith<$Res>(_value.dates!, (value) {
      return _then(_value.copyWith(dates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpcomingMoviesDataImplCopyWith<$Res>
    implements $UpcomingMoviesDataCopyWith<$Res> {
  factory _$$UpcomingMoviesDataImplCopyWith(_$UpcomingMoviesDataImpl value,
          $Res Function(_$UpcomingMoviesDataImpl) then) =
      __$$UpcomingMoviesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Dates? dates,
      int? page,
      List<MovieDetailsData>? results,
      int? totalPages,
      int? totalResults});

  @override
  $DatesCopyWith<$Res>? get dates;
}

/// @nodoc
class __$$UpcomingMoviesDataImplCopyWithImpl<$Res>
    extends _$UpcomingMoviesDataCopyWithImpl<$Res, _$UpcomingMoviesDataImpl>
    implements _$$UpcomingMoviesDataImplCopyWith<$Res> {
  __$$UpcomingMoviesDataImplCopyWithImpl(_$UpcomingMoviesDataImpl _value,
      $Res Function(_$UpcomingMoviesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dates = freezed,
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_$UpcomingMoviesDataImpl(
      dates: freezed == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as Dates?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieDetailsData>?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpcomingMoviesDataImpl implements _UpcomingMoviesData {
  const _$UpcomingMoviesDataImpl(
      {this.dates,
      this.page,
      final List<MovieDetailsData>? results,
      this.totalPages,
      this.totalResults})
      : _results = results;

  factory _$UpcomingMoviesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpcomingMoviesDataImplFromJson(json);

  @override
  final Dates? dates;
  @override
  final int? page;
  final List<MovieDetailsData>? _results;
  @override
  List<MovieDetailsData>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? totalPages;
  @override
  final int? totalResults;

  @override
  String toString() {
    return 'UpcomingMoviesData(dates: $dates, page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpcomingMoviesDataImpl &&
            (identical(other.dates, dates) || other.dates == dates) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dates, page,
      const DeepCollectionEquality().hash(_results), totalPages, totalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpcomingMoviesDataImplCopyWith<_$UpcomingMoviesDataImpl> get copyWith =>
      __$$UpcomingMoviesDataImplCopyWithImpl<_$UpcomingMoviesDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpcomingMoviesDataImplToJson(
      this,
    );
  }
}

abstract class _UpcomingMoviesData implements UpcomingMoviesData {
  const factory _UpcomingMoviesData(
      {final Dates? dates,
      final int? page,
      final List<MovieDetailsData>? results,
      final int? totalPages,
      final int? totalResults}) = _$UpcomingMoviesDataImpl;

  factory _UpcomingMoviesData.fromJson(Map<String, dynamic> json) =
      _$UpcomingMoviesDataImpl.fromJson;

  @override
  Dates? get dates;
  @override
  int? get page;
  @override
  List<MovieDetailsData>? get results;
  @override
  int? get totalPages;
  @override
  int? get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$UpcomingMoviesDataImplCopyWith<_$UpcomingMoviesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Dates _$DatesFromJson(Map<String, dynamic> json) {
  return _Dates.fromJson(json);
}

/// @nodoc
mixin _$Dates {
  DateTime? get maximum => throw _privateConstructorUsedError;
  DateTime? get minimum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatesCopyWith<Dates> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatesCopyWith<$Res> {
  factory $DatesCopyWith(Dates value, $Res Function(Dates) then) =
      _$DatesCopyWithImpl<$Res, Dates>;
  @useResult
  $Res call({DateTime? maximum, DateTime? minimum});
}

/// @nodoc
class _$DatesCopyWithImpl<$Res, $Val extends Dates>
    implements $DatesCopyWith<$Res> {
  _$DatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maximum = freezed,
    Object? minimum = freezed,
  }) {
    return _then(_value.copyWith(
      maximum: freezed == maximum
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      minimum: freezed == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatesImplCopyWith<$Res> implements $DatesCopyWith<$Res> {
  factory _$$DatesImplCopyWith(
          _$DatesImpl value, $Res Function(_$DatesImpl) then) =
      __$$DatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? maximum, DateTime? minimum});
}

/// @nodoc
class __$$DatesImplCopyWithImpl<$Res>
    extends _$DatesCopyWithImpl<$Res, _$DatesImpl>
    implements _$$DatesImplCopyWith<$Res> {
  __$$DatesImplCopyWithImpl(
      _$DatesImpl _value, $Res Function(_$DatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maximum = freezed,
    Object? minimum = freezed,
  }) {
    return _then(_$DatesImpl(
      maximum: freezed == maximum
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      minimum: freezed == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatesImpl implements _Dates {
  const _$DatesImpl({this.maximum, this.minimum});

  factory _$DatesImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatesImplFromJson(json);

  @override
  final DateTime? maximum;
  @override
  final DateTime? minimum;

  @override
  String toString() {
    return 'Dates(maximum: $maximum, minimum: $minimum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatesImpl &&
            (identical(other.maximum, maximum) || other.maximum == maximum) &&
            (identical(other.minimum, minimum) || other.minimum == minimum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, maximum, minimum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatesImplCopyWith<_$DatesImpl> get copyWith =>
      __$$DatesImplCopyWithImpl<_$DatesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatesImplToJson(
      this,
    );
  }
}

abstract class _Dates implements Dates {
  const factory _Dates({final DateTime? maximum, final DateTime? minimum}) =
      _$DatesImpl;

  factory _Dates.fromJson(Map<String, dynamic> json) = _$DatesImpl.fromJson;

  @override
  DateTime? get maximum;
  @override
  DateTime? get minimum;
  @override
  @JsonKey(ignore: true)
  _$$DatesImplCopyWith<_$DatesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'show_time_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShowTimeEntity _$ShowTimeEntityFromJson(Map<String, dynamic> json) {
  return _ShowTimeEntity.fromJson(json);
}

/// @nodoc
mixin _$ShowTimeEntity {
  int? get id => throw _privateConstructorUsedError;
  MovieEntity? get movie => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  List<SeatEntity>? get seats => throw _privateConstructorUsedError;
  DateTime? get startTime => throw _privateConstructorUsedError;
  DateTime? get endTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShowTimeEntityCopyWith<ShowTimeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowTimeEntityCopyWith<$Res> {
  factory $ShowTimeEntityCopyWith(
          ShowTimeEntity value, $Res Function(ShowTimeEntity) then) =
      _$ShowTimeEntityCopyWithImpl<$Res, ShowTimeEntity>;
  @useResult
  $Res call(
      {int? id,
      MovieEntity? movie,
      @JsonKey(includeToJson: false) List<SeatEntity>? seats,
      DateTime? startTime,
      DateTime? endTime});

  $MovieEntityCopyWith<$Res>? get movie;
}

/// @nodoc
class _$ShowTimeEntityCopyWithImpl<$Res, $Val extends ShowTimeEntity>
    implements $ShowTimeEntityCopyWith<$Res> {
  _$ShowTimeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? movie = freezed,
    Object? seats = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      movie: freezed == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as MovieEntity?,
      seats: freezed == seats
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as List<SeatEntity>?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieEntityCopyWith<$Res>? get movie {
    if (_value.movie == null) {
      return null;
    }

    return $MovieEntityCopyWith<$Res>(_value.movie!, (value) {
      return _then(_value.copyWith(movie: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShowTimeEntityImplCopyWith<$Res>
    implements $ShowTimeEntityCopyWith<$Res> {
  factory _$$ShowTimeEntityImplCopyWith(_$ShowTimeEntityImpl value,
          $Res Function(_$ShowTimeEntityImpl) then) =
      __$$ShowTimeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      MovieEntity? movie,
      @JsonKey(includeToJson: false) List<SeatEntity>? seats,
      DateTime? startTime,
      DateTime? endTime});

  @override
  $MovieEntityCopyWith<$Res>? get movie;
}

/// @nodoc
class __$$ShowTimeEntityImplCopyWithImpl<$Res>
    extends _$ShowTimeEntityCopyWithImpl<$Res, _$ShowTimeEntityImpl>
    implements _$$ShowTimeEntityImplCopyWith<$Res> {
  __$$ShowTimeEntityImplCopyWithImpl(
      _$ShowTimeEntityImpl _value, $Res Function(_$ShowTimeEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? movie = freezed,
    Object? seats = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_$ShowTimeEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      movie: freezed == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as MovieEntity?,
      seats: freezed == seats
          ? _value._seats
          : seats // ignore: cast_nullable_to_non_nullable
              as List<SeatEntity>?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShowTimeEntityImpl implements _ShowTimeEntity {
  const _$ShowTimeEntityImpl(
      {this.id,
      this.movie,
      @JsonKey(includeToJson: false) final List<SeatEntity>? seats,
      this.startTime,
      this.endTime})
      : _seats = seats;

  factory _$ShowTimeEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShowTimeEntityImplFromJson(json);

  @override
  final int? id;
  @override
  final MovieEntity? movie;
  final List<SeatEntity>? _seats;
  @override
  @JsonKey(includeToJson: false)
  List<SeatEntity>? get seats {
    final value = _seats;
    if (value == null) return null;
    if (_seats is EqualUnmodifiableListView) return _seats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? startTime;
  @override
  final DateTime? endTime;

  @override
  String toString() {
    return 'ShowTimeEntity(id: $id, movie: $movie, seats: $seats, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowTimeEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.movie, movie) || other.movie == movie) &&
            const DeepCollectionEquality().equals(other._seats, _seats) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, movie,
      const DeepCollectionEquality().hash(_seats), startTime, endTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowTimeEntityImplCopyWith<_$ShowTimeEntityImpl> get copyWith =>
      __$$ShowTimeEntityImplCopyWithImpl<_$ShowTimeEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShowTimeEntityImplToJson(
      this,
    );
  }
}

abstract class _ShowTimeEntity implements ShowTimeEntity {
  const factory _ShowTimeEntity(
      {final int? id,
      final MovieEntity? movie,
      @JsonKey(includeToJson: false) final List<SeatEntity>? seats,
      final DateTime? startTime,
      final DateTime? endTime}) = _$ShowTimeEntityImpl;

  factory _ShowTimeEntity.fromJson(Map<String, dynamic> json) =
      _$ShowTimeEntityImpl.fromJson;

  @override
  int? get id;
  @override
  MovieEntity? get movie;
  @override
  @JsonKey(includeToJson: false)
  List<SeatEntity>? get seats;
  @override
  DateTime? get startTime;
  @override
  DateTime? get endTime;
  @override
  @JsonKey(ignore: true)
  _$$ShowTimeEntityImplCopyWith<_$ShowTimeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

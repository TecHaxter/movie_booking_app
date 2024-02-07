// // coverage:ignore-file
// // GENERATED CODE - DO NOT MODIFY BY HAND
// // ignore_for_file: type=lint
// // ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

// part of 'show_cubit.dart';

// // **************************************************************************
// // FreezedGenerator
// // **************************************************************************

// T _$identity<T>(T value) => value;

// final _privateConstructorUsedError = UnsupportedError(
//     'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

// /// @nodoc
// mixin _$ShowCubitState {
//   List<ShowEntity>? get shows => throw _privateConstructorUsedError;
//   ShowEntity? get selectedShow => throw _privateConstructorUsedError;
//   List<TheatreEntity>? get theatres => throw _privateConstructorUsedError;
//   TheatreEntity? get selectedTheatre => throw _privateConstructorUsedError;
//   DateTime? get selectedDay => throw _privateConstructorUsedError;

//   @JsonKey(ignore: true)
//   $ShowCubitStateCopyWith<ShowCubitState> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $ShowCubitStateCopyWith<$Res> {
//   factory $ShowCubitStateCopyWith(
//           ShowCubitState value, $Res Function(ShowCubitState) then) =
//       _$ShowCubitStateCopyWithImpl<$Res, ShowCubitState>;
//   @useResult
//   $Res call(
//       {List<ShowEntity>? shows,
//       ShowEntity? selectedShow,
//       List<TheatreEntity>? theatres,
//       TheatreEntity? selectedTheatre,
//       DateTime? selectedDay});
// }

// /// @nodoc
// class _$ShowCubitStateCopyWithImpl<$Res, $Val extends ShowCubitState>
//     implements $ShowCubitStateCopyWith<$Res> {
//   _$ShowCubitStateCopyWithImpl(this._value, this._then);

//   // ignore: unused_field
//   final $Val _value;
//   // ignore: unused_field
//   final $Res Function($Val) _then;

//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? shows = freezed,
//     Object? selectedShow = freezed,
//     Object? theatres = freezed,
//     Object? selectedTheatre = freezed,
//     Object? selectedDay = freezed,
//   }) {
//     return _then(_value.copyWith(
//       shows: freezed == shows
//           ? _value.shows
//           : shows // ignore: cast_nullable_to_non_nullable
//               as List<ShowEntity>?,
//       selectedShow: freezed == selectedShow
//           ? _value.selectedShow
//           : selectedShow // ignore: cast_nullable_to_non_nullable
//               as ShowEntity?,
//       theatres: freezed == theatres
//           ? _value.theatres
//           : theatres // ignore: cast_nullable_to_non_nullable
//               as List<TheatreEntity>?,
//       selectedTheatre: freezed == selectedTheatre
//           ? _value.selectedTheatre
//           : selectedTheatre // ignore: cast_nullable_to_non_nullable
//               as TheatreEntity?,
//       selectedDay: freezed == selectedDay
//           ? _value.selectedDay
//           : selectedDay // ignore: cast_nullable_to_non_nullable
//               as DateTime?,
//     ) as $Val);
//   }
// }

// /// @nodoc
// abstract class _$$ShowCubitStateImplCopyWith<$Res>
//     implements $ShowCubitStateCopyWith<$Res> {
//   factory _$$ShowCubitStateImplCopyWith(_$ShowCubitStateImpl value,
//           $Res Function(_$ShowCubitStateImpl) then) =
//       __$$ShowCubitStateImplCopyWithImpl<$Res>;
//   @override
//   @useResult
//   $Res call(
//       {List<ShowEntity>? shows,
//       ShowEntity? selectedShow,
//       List<TheatreEntity>? theatres,
//       TheatreEntity? selectedTheatre,
//       DateTime? selectedDay});
// }

// /// @nodoc
// class __$$ShowCubitStateImplCopyWithImpl<$Res>
//     extends _$ShowCubitStateCopyWithImpl<$Res, _$ShowCubitStateImpl>
//     implements _$$ShowCubitStateImplCopyWith<$Res> {
//   __$$ShowCubitStateImplCopyWithImpl(
//       _$ShowCubitStateImpl _value, $Res Function(_$ShowCubitStateImpl) _then)
//       : super(_value, _then);

//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? shows = freezed,
//     Object? selectedShow = freezed,
//     Object? theatres = freezed,
//     Object? selectedTheatre = freezed,
//     Object? selectedDay = freezed,
//   }) {
//     return _then(_$ShowCubitStateImpl(
//       shows: freezed == shows
//           ? _value._shows
//           : shows // ignore: cast_nullable_to_non_nullable
//               as List<ShowEntity>?,
//       selectedShow: freezed == selectedShow
//           ? _value.selectedShow
//           : selectedShow // ignore: cast_nullable_to_non_nullable
//               as ShowEntity?,
//       theatres: freezed == theatres
//           ? _value._theatres
//           : theatres // ignore: cast_nullable_to_non_nullable
//               as List<TheatreEntity>?,
//       selectedTheatre: freezed == selectedTheatre
//           ? _value.selectedTheatre
//           : selectedTheatre // ignore: cast_nullable_to_non_nullable
//               as TheatreEntity?,
//       selectedDay: freezed == selectedDay
//           ? _value.selectedDay
//           : selectedDay // ignore: cast_nullable_to_non_nullable
//               as DateTime?,
//     ));
//   }
// }

// /// @nodoc

// class _$ShowCubitStateImpl implements _ShowCubitState {
//   const _$ShowCubitStateImpl(
//       {final List<ShowEntity>? shows,
//       this.selectedShow,
//       final List<TheatreEntity>? theatres,
//       this.selectedTheatre,
//       this.selectedDay})
//       : _shows = shows,
//         _theatres = theatres;

//   final List<ShowEntity>? _shows;
//   @override
//   List<ShowEntity>? get shows {
//     final value = _shows;
//     if (value == null) return null;
//     if (_shows is EqualUnmodifiableListView) return _shows;
//     // ignore: implicit_dynamic_type
//     return EqualUnmodifiableListView(value);
//   }

//   @override
//   final ShowEntity? selectedShow;
//   final List<TheatreEntity>? _theatres;
//   @override
//   List<TheatreEntity>? get theatres {
//     final value = _theatres;
//     if (value == null) return null;
//     if (_theatres is EqualUnmodifiableListView) return _theatres;
//     // ignore: implicit_dynamic_type
//     return EqualUnmodifiableListView(value);
//   }

//   @override
//   final TheatreEntity? selectedTheatre;
//   @override
//   final DateTime? selectedDay;

//   @override
//   String toString() {
//     return 'ShowCubitState(shows: $shows, selectedShow: $selectedShow, theatres: $theatres, selectedTheatre: $selectedTheatre, selectedDay: $selectedDay)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$ShowCubitStateImpl &&
//             const DeepCollectionEquality().equals(other._shows, _shows) &&
//             const DeepCollectionEquality()
//                 .equals(other.selectedShow, selectedShow) &&
//             const DeepCollectionEquality().equals(other._theatres, _theatres) &&
//             const DeepCollectionEquality()
//                 .equals(other.selectedTheatre, selectedTheatre) &&
//             (identical(other.selectedDay, selectedDay) ||
//                 other.selectedDay == selectedDay));
//   }

//   @override
//   int get hashCode => Object.hash(
//       runtimeType,
//       const DeepCollectionEquality().hash(_shows),
//       const DeepCollectionEquality().hash(selectedShow),
//       const DeepCollectionEquality().hash(_theatres),
//       const DeepCollectionEquality().hash(selectedTheatre),
//       selectedDay);

//   @JsonKey(ignore: true)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$ShowCubitStateImplCopyWith<_$ShowCubitStateImpl> get copyWith =>
//       __$$ShowCubitStateImplCopyWithImpl<_$ShowCubitStateImpl>(
//           this, _$identity);
// }

// abstract class _ShowCubitState implements ShowCubitState {
//   const factory _ShowCubitState(
//       {final List<ShowEntity>? shows,
//       final ShowEntity? selectedShow,
//       final List<TheatreEntity>? theatres,
//       final TheatreEntity? selectedTheatre,
//       final DateTime? selectedDay}) = _$ShowCubitStateImpl;

//   @override
//   List<ShowEntity>? get shows;
//   @override
//   ShowEntity? get selectedShow;
//   @override
//   List<TheatreEntity>? get theatres;
//   @override
//   TheatreEntity? get selectedTheatre;
//   @override
//   DateTime? get selectedDay;
//   @override
//   @JsonKey(ignore: true)
//   _$$ShowCubitStateImplCopyWith<_$ShowCubitStateImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }

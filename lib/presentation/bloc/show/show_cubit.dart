// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:movie_booking_app/domain/entity/movie_entity.dart';
// import 'package:movie_booking_app/domain/entity/seat_entity.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:movie_booking_app/domain/usecase/fetch_theatres_usecase.dart';
// part 'show_cubit.freezed.dart';

// @freezed
// class ShowCubitState with _$ShowCubitState {
//   const factory ShowCubitState({
//     List<ShowEntity>? shows,
//     ShowEntity? selectedShow,
//     List<TheatreEntity>? theatres,
//     TheatreEntity? selectedTheatre,
//     DateTime? selectedDay,
//   }) = _ShowCubitState;
// }

// class ShowCubit extends Cubit<ShowCubitState> {
//   final FetchMovieShowsUsecase fetchMovieShowsUsecase;
//   final FetchTheatreUsecase fetchTheatreUsecase;

//   ShowCubit(
//     this.fetchMovieShowsUsecase,
//     this.fetchTheatreUsecase,
//   ) : super(const ShowCubitState());

//   Future<void> bookMyShow(ShowEntity show) async {}

//   Future<void> _fetchShows(MovieEntity movie) async {
//     if (state.selectedTheatre == null && state.selectedDay == null) {
//       return;
//     }
//     final res = await fetchMovieShowsUsecase.call(
//       movie,
//       theatre: state.selectedTheatre!,
//       day: state.selectedDay!,
//     );
//     final data = res.fold((l) => null, (r) => r);
//     emit(state.copyWith(
//       shows: data,
//     ));
//   }

//   Future<void> _fetchTheatres(MovieEntity movie) async {
//     final res = await fetchTheatreUsecase.call(
//       movie,
//     );
//     final data = res.fold((l) => null, (r) => r);
//     emit(state.copyWith(
//       theatres: data,
//       selectedTheatre: data?.isNotEmpty ?? false ? data?.first : null,
//     ));
//   }

//   Future<void> initializeTheatreDatesAndShows(MovieEntity movie) async {
//     await _fetchTheatres(movie);
//     emit(state.copyWith(selectedDay: DateTime.now()));
//     await _fetchShows(movie);
//   }

//   void selectDate(DateTime? date) {
//     emit(state.copyWith(selectedDay: date));
//   }

//   void selectTheatre(TheatreEntity theatreEntity) {
//     emit(state.copyWith(
//       selectedTheatre: theatreEntity,
//     ));
//   }

//   void selectShow(ShowEntity show) {
//     emit(state.copyWith(selectedShow: show));
//   }

//   void toggleSeatSelection(int index) {
//     ShowEntity? show = state.selectedShow;
//     final seats = show?.seats?.toList();
//     SeatEntity? seat = (seats?.length ?? 0) < index ? null : seats?[index];
//     if (seat == null) {
//       return;
//     }
//     seat = seat.copyWith(
//       status: seat.status == SeatAvailabiltyEnum.available
//           ? SeatAvailabiltyEnum.selected
//           : SeatAvailabiltyEnum.available,
//     );
//     seats![index] = seat;
//     show = show!.copyWith(seats: seats);
//     emit(
//       state.copyWith(
//         selectedShow: show,
//       ),
//     );
//   }
// }

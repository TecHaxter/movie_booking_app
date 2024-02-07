import 'package:freezed_annotation/freezed_annotation.dart';
part 'seat_entity.freezed.dart';
part 'seat_entity.g.dart';

enum SeatAvailabiltyEnum {
  available,
  reserved,
  selected,
}

@freezed
class SeatEntity with _$SeatEntity {
  const factory SeatEntity({
    int? number,
    String? row,
    SeatAvailabiltyEnum? status,
    @Default(480) double? price,
  }) = _SeatEntity;

  factory SeatEntity.fromJson(Map<String, Object?> json) =>
      _$SeatEntityFromJson(json);
}

const List<SeatEntity> seatsHardcodedData = [
  SeatEntity(
    number: 0,
    row: 'A',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 1,
    row: 'A',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 2,
    row: 'A',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 3,
    row: 'A',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 4,
    row: 'A',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: null,
    row: 'A',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 5,
    row: 'A',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 6,
    row: 'A',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 7,
    row: 'A',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 8,
    row: 'A',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 0,
    row: 'B',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 1,
    row: 'B',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 2,
    row: 'B',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 3,
    row: 'B',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 4,
    row: 'B',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: null,
    row: 'B',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 5,
    row: 'B',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 6,
    row: 'B',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 7,
    row: 'B',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 8,
    row: 'B',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 0,
    row: 'C',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 1,
    row: 'C',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 2,
    row: 'C',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 3,
    row: 'C',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 4,
    row: 'C',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: null,
    row: 'C',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 5,
    row: 'C',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 6,
    row: 'C',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 7,
    row: 'C',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 8,
    row: 'C',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 0,
    row: 'D',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 1,
    row: 'D',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 2,
    row: 'D',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 3,
    row: 'D',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 4,
    row: 'D',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: null,
    row: 'D',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 5,
    row: 'D',
    status: SeatAvailabiltyEnum.available,
  ),
  SeatEntity(
    number: 6,
    row: 'D',
    status: SeatAvailabiltyEnum.available,
  ),
  SeatEntity(
    number: 7,
    row: 'D',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 8,
    row: 'D',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 0,
    row: 'E',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 1,
    row: 'E',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 2,
    row: 'E',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 3,
    row: 'E',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 4,
    row: 'E',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: null,
    row: 'E',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 5,
    row: 'E',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 6,
    row: 'E',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 7,
    row: 'E',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 8,
    row: 'E',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 0,
    row: null,
    status: SeatAvailabiltyEnum.available,
  ),
  SeatEntity(
    number: null,
    row: null,
    status: SeatAvailabiltyEnum.available,
  ),
  SeatEntity(
    number: null,
    row: null,
    status: SeatAvailabiltyEnum.available,
  ),
  SeatEntity(
    number: null,
    row: null,
    status: SeatAvailabiltyEnum.available,
  ),
  SeatEntity(
    number: null,
    row: null,
    status: SeatAvailabiltyEnum.available,
  ),
  SeatEntity(
    number: null,
    row: null,
    status: SeatAvailabiltyEnum.available,
  ),
  SeatEntity(
    number: null,
    row: null,
    status: SeatAvailabiltyEnum.available,
  ),
  SeatEntity(
    number: null,
    row: null,
    status: SeatAvailabiltyEnum.available,
  ),
  SeatEntity(
    number: null,
    row: null,
    status: SeatAvailabiltyEnum.available,
  ),
  SeatEntity(
    number: null,
    row: null,
    status: SeatAvailabiltyEnum.available,
  ),
  SeatEntity(
    number: 0,
    row: 'F',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 1,
    row: 'F',
    status: SeatAvailabiltyEnum.available,
  ),
  SeatEntity(
    number: 2,
    row: 'F',
    status: SeatAvailabiltyEnum.available,
  ),
  SeatEntity(
    number: 3,
    row: 'F',
    status: SeatAvailabiltyEnum.available,
  ),
  SeatEntity(
    number: 4,
    row: 'F',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 5,
    row: 'F',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 6,
    row: 'F',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 7,
    row: 'F',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 8,
    row: 'F',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 9,
    row: 'F',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 0,
    row: 'G',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 1,
    row: 'G',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 2,
    row: 'G',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 3,
    row: 'G',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 4,
    row: 'G',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 5,
    row: 'G',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 6,
    row: 'G',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 7,
    row: 'G',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 8,
    row: 'G',
    status: SeatAvailabiltyEnum.reserved,
  ),
  SeatEntity(
    number: 9,
    row: 'G',
    status: SeatAvailabiltyEnum.reserved,
  ),
];

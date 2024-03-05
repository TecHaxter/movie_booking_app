import 'package:freezed_annotation/freezed_annotation.dart';
part 'production_country_data.freezed.dart';
part 'production_country_data.g.dart';

@freezed
class ProductionCountryData with _$ProductionCountryData {
  const factory ProductionCountryData({
    @JsonKey(name: 'iso_3166_1') String? iso31661,
    String? name,
  }) = _ProductionCountryData;

  factory ProductionCountryData.fromJson(Map<String, Object?> json) =>
      _$ProductionCountryDataFromJson(json);
}

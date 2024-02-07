import 'package:freezed_annotation/freezed_annotation.dart';
part 'production_company_data.freezed.dart';
part 'production_company_data.g.dart';

@freezed
class ProductionCompanyData with _$ProductionCompanyData {
  const factory ProductionCompanyData({
    int? id,
    String? logoPath,
    String? name,
    String? originCountry,
  }) = _ProductionCompanyData;

  factory ProductionCompanyData.fromJson(Map<String, Object?> json) =>
      _$ProductionCompanyDataFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
part 'spoken_language_data.freezed.dart';
part 'spoken_language_data.g.dart';

@freezed
class SpokenLanguageData with _$SpokenLanguageData {
  const factory SpokenLanguageData({
    String? englishName,
    @JsonKey(name: 'iso_3166_1') String? iso6391,
    String? name,
  }) = _SpokenLanguageData;

  factory SpokenLanguageData.fromJson(Map<String, Object?> json) =>
      _$SpokenLanguageDataFromJson(json);
}

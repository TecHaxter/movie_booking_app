import 'package:freezed_annotation/freezed_annotation.dart';
part 'image_data.freezed.dart';
part 'image_data.g.dart';

@freezed
class ImageData with _$ImageData {
  const factory ImageData({
    List<ImageDataItem>? backdrops,
    int? id,
    List<ImageDataItem>? logos,
    List<ImageDataItem>? posters,
  }) = _ImageData;

  factory ImageData.fromJson(Map<String, Object?> json) =>
      _$ImageDataFromJson(json);
}

@freezed
class ImageDataItem with _$ImageDataItem {
  const factory ImageDataItem({
    double? aspectRatio,
    int? height,
    @JsonKey(name: 'iso_639_1') String? iso6391,
    String? filePath,
    double? voteAverage,
    int? voteCount,
    int? width,
  }) = _ImageDataItem;

  factory ImageDataItem.fromJson(Map<String, Object?> json) =>
      _$ImageDataItemFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
part 'video_data.freezed.dart';
part 'video_data.g.dart';

@freezed
class VideoData with _$VideoData {
  const factory VideoData({
    int? id,
    List<VideoDataItem>? results,
  }) = _VideoData;

  factory VideoData.fromJson(Map<String, Object?> json) =>
      _$VideoDataFromJson(json);
}

@freezed
class VideoDataItem with _$VideoDataItem {
  const factory VideoDataItem({
    @JsonKey(name: 'iso_639_1') String? iso6391,
    @JsonKey(name: 'iso_3166_1') String? iso31661,
    String? name,
    String? key,
    String? site,
    int? size,
    String? type,
    bool? official,
    String? publishedAt,
    String? id,
  }) = _VideoDataItem;

  factory VideoDataItem.fromJson(Map<String, Object?> json) =>
      _$VideoDataItemFromJson(json);
}

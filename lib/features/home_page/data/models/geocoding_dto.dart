import 'package:freezed_annotation/freezed_annotation.dart';

part 'geocoding_dto.freezed.dart';
part 'geocoding_dto.g.dart';

@freezed
class GeocodingDto with _$GeocodingDto {
  const factory GeocodingDto({
    @JsonKey(name: 'name')
    required String name,
    @JsonKey(name: 'lat')
    required double lat,
    @JsonKey(name: 'lon')
    required double lon,
    @JsonKey(name: 'country')
    required String country,
    @JsonKey(name: 'state')
    String? state,
  }) = _GeocodingDto;

  factory GeocodingDto.fromJson(Map<String, dynamic> json) => _$GeocodingDtoFromJson(json);
}

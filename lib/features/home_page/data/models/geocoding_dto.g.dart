// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geocoding_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeocodingDtoImpl _$$GeocodingDtoImplFromJson(Map<String, dynamic> json) =>
    _$GeocodingDtoImpl(
      name: json['name'] as String,
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
      country: json['country'] as String,
      state: json['state'] as String?,
    );

Map<String, dynamic> _$$GeocodingDtoImplToJson(_$GeocodingDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lat': instance.lat,
      'lon': instance.lon,
      'country': instance.country,
      'state': instance.state,
    };

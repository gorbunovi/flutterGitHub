// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HotelInfo _$HotelInfoFromJson(Map<String, dynamic> json) {
  return HotelInfo(
    name: json['name'] as String,
    rating: (json['rating'] as num)?.toDouble(),
    status: (json['status'] as num)?.toDouble(),
    photos: (json['photos'] as List)?.map((e) => e as String)?.toList(),
    address: json['address'] == null
        ? null
        : Address.fromJson(json['address'] as Map<String, dynamic>),
    services: json['services'] == null
        ? null
        : Services.fromJson(json['services'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$HotelInfoToJson(HotelInfo instance) => <String, dynamic>{
      'name': instance.name,
      'rating': instance.rating,
      'status': instance.status,
      'address': instance.address?.toJson(),
      'services': instance.services?.toJson(),
      'photos': instance.photos,
    };

Address _$AddressFromJson(Map<String, dynamic> json) {
  return Address(
    country: json['country'] as String,
    street: json['street'] as String,
    city: json['city'] as String,
    zip_code: json['zip_code'] as int,
  );
}

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'country': instance.country,
      'street': instance.street,
      'city': instance.city,
      'zip_code': instance.zip_code,
    };

Services _$ServicesFromJson(Map<String, dynamic> json) {
  return Services(
    free: (json['free'] as List)?.map((e) => e as String)?.toList(),
    paid: (json['paid'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$ServicesToJson(Services instance) => <String, dynamic>{
      'free': instance.free,
      'paid': instance.paid,
    };

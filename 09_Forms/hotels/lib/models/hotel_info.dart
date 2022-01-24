import 'package:json_annotation/json_annotation.dart';

part 'hotel_info.g.dart';

@JsonSerializable(explicitToJson: true)
class HotelInfo{
  final String name;
  final double rating;
  final double status;
  final Address address;
  final Services services;
  final List <String> photos;

  HotelInfo(
      {this.name,
      this.rating,
      this.status,
      this.photos,
      this.address,
      this.services});

  factory HotelInfo.fromJson(Map<String, dynamic> json) => _$HotelInfoFromJson(json);
  Map<String, dynamic> toJson() => _$HotelInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Address{
  final String country;
  final String street;
  final String city;
  final int zip_code;

  Address({this.country, this.street, this.city, this.zip_code});

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
  Map<String, dynamic> toJson() => _$AddressToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Services{
  final List<String> free;
  final List<String> paid;

  Services({this.free, this.paid});

  factory Services.fromJson(Map<String, dynamic> json) => _$ServicesFromJson(json);
  Map<String, dynamic> toJson() => _$ServicesToJson(this);
}

// @JsonSerializable(explicitToJson: true)
// class Free{
//   final List<String> free;
//
//   Free({this.free});
//
//   factory Free.fromJson(Map<String, dynamic> json) => _$FreeFromJson(json);
//   Map<String, dynamic> toJson() => _$FreeToJson(this);
// }
//
//
// @JsonSerializable(explicitToJson: true)
// class Paid{
//   final List<String> paid;
//
//   Paid({this.paid});
//
//   factory Paid.fromJson(Map<String, dynamic> json) => _$PaidFromJson(json);
//   Map<String, dynamic> toJson() => _$PaidToJson(this);
// }
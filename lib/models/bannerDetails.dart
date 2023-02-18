import 'package:json_annotation/json_annotation.dart';

part 'bannerDetails.g.dart';

@JsonSerializable()
class BannerDetails {
  BannerDetails();

  late num? id;
  late String? banner;

  factory BannerDetails.fromJson(Map<String, dynamic> json) =>
      _$BannerDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$BannerDetailsToJson(this);
}

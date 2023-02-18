import 'package:json_annotation/json_annotation.dart';

part 'userDetails.g.dart';

@JsonSerializable()
class UserDetails {
  UserDetails();

  late num? id;
  late String? name;
  late String? email;
  late String? photo;
  late String? phone;
  late num? role;

  factory UserDetails.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$UserDetailsToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

part 'loginDetails.g.dart';

@JsonSerializable()
class LoginDetails {
  LoginDetails();

  late num? id;
  late String? name;
  late String? email;
  late String? photo;
  late String? phone;
  late String? token;
  late num? role;

  factory LoginDetails.fromJson(Map<String, dynamic> json) =>
      _$LoginDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$LoginDetailsToJson(this);
}

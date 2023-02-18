import 'package:json_annotation/json_annotation.dart';
import "loginDetails.dart";
part 'loginData.g.dart';

@JsonSerializable()
class LoginData {
  LoginData();

  late num status;
  late String message;
  late LoginDetails? data;

  factory LoginData.fromJson(Map<String, dynamic> json) =>
      _$LoginDataFromJson(json);
  Map<String, dynamic> toJson() => _$LoginDataToJson(this);
}

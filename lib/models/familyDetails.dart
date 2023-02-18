import 'package:json_annotation/json_annotation.dart';

part 'familyDetails.g.dart';

@JsonSerializable()
class FamilyDetails {
  FamilyDetails();

  late num id;
  late String user_id;
  late String name;
  late String email;
  late String phone;
  late String relation;
  late String gender;
  late num status;
  late String created_at;
  late String updated_at;
  
  factory FamilyDetails.fromJson(Map<String,dynamic> json) => _$FamilyDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$FamilyDetailsToJson(this);
}

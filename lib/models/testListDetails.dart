import 'package:json_annotation/json_annotation.dart';

part 'testListDetails.g.dart';

@JsonSerializable()
class TestListDetails {
  TestListDetails();

  late num id;
  late String category;
  late String logo;
  late num status;
  late String created_at;
  late String updated_at;
  
  factory TestListDetails.fromJson(Map<String,dynamic> json) => _$TestListDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$TestListDetailsToJson(this);
}

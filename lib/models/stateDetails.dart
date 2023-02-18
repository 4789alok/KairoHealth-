import 'package:json_annotation/json_annotation.dart';

part 'stateDetails.g.dart';

@JsonSerializable()
class StateDetails {
  StateDetails();

  late num id;
  late String name;
  
  factory StateDetails.fromJson(Map<String,dynamic> json) => _$StateDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$StateDetailsToJson(this);
}

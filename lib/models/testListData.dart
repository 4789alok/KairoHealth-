import 'package:json_annotation/json_annotation.dart';
import "testListDetails.dart";
part 'testListData.g.dart';

@JsonSerializable()
class TestListData {
  TestListData();

  late num status;
  late String message;
  late List<TestListDetails> data;
  
  factory TestListData.fromJson(Map<String,dynamic> json) => _$TestListDataFromJson(json);
  Map<String, dynamic> toJson() => _$TestListDataToJson(this);
}

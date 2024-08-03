import 'package:json_annotation/json_annotation.dart';

part 'home_params.g.dart';

@JsonSerializable()
class HomeParams {
  @JsonKey(name: 'first_category_id')
  final int? firstCategoryId;
  @JsonKey(name: 'second_category_id')
  final int? secondCategoryId;
  @JsonKey(name: 'third_category_id')
  final int? thirdCategoryId;
  final String? choice;
  final int? limit;
  final String? key;
  final int? offset;

  HomeParams(
      {this.firstCategoryId,
      this.secondCategoryId,
      this.thirdCategoryId,
      this.choice,
      this.key,
      this.limit,
      this.offset});

  factory HomeParams.fromJson(Map<String, dynamic> json) {
    return _$HomeParamsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeParamsToJson(this);
}

// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';
import 'package:vlearn_test/domain/entities/home_entity.dart';

import 'home_model.dart';

part 'university_model.g.dart';

@JsonSerializable()
class UniversityModel {
  int? id;
  @JsonKey(name: 'second_category_id')
  int? secondCategoryId;
  NameModel? name;
  int? year;
  String? image;
  UniversityModel({
    this.id,
    this.secondCategoryId,
    this.name,
    this.year,
    this.image,
  });

  factory UniversityModel.fromJson(Map<String, dynamic> json) {
    return _$UniversityModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UniversityModelToJson(this);

  UniversityEntity toDomain() {
    return UniversityEntity(
        id: id,
        image: image,
        name: name?.toDomain(),
        secondCategoryId: secondCategoryId,
        year: year);
  }
}

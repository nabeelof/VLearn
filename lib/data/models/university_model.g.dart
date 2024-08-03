// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'university_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UniversityModel _$UniversityModelFromJson(Map<String, dynamic> json) =>
    UniversityModel(
      id: (json['id'] as num?)?.toInt(),
      secondCategoryId: (json['second_category_id'] as num?)?.toInt(),
      name: json['name'] == null
          ? null
          : NameModel.fromJson(json['name'] as Map<String, dynamic>),
      year: (json['year'] as num?)?.toInt(),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$UniversityModelToJson(UniversityModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'second_category_id': instance.secondCategoryId,
      'name': instance.name,
      'year': instance.year,
      'image': instance.image,
    };

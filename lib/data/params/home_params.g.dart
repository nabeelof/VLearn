// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeParams _$HomeParamsFromJson(Map<String, dynamic> json) => HomeParams(
      firstCategoryId: (json['first_category_id'] as num?)?.toInt(),
      secondCategoryId: (json['second_category_id'] as num?)?.toInt(),
      thirdCategoryId: (json['third_category_id'] as num?)?.toInt(),
      choice: json['choice'] as String?,
      key: json['key'] as String?,
      limit: (json['limit'] as num?)?.toInt(),
      offset: (json['offset'] as num?)?.toInt(),
    );

Map<String, dynamic> _$HomeParamsToJson(HomeParams instance) =>
    <String, dynamic>{
      'first_category_id': instance.firstCategoryId,
      'second_category_id': instance.secondCategoryId,
      'third_category_id': instance.thirdCategoryId,
      'choice': instance.choice,
      'limit': instance.limit,
      'key': instance.key,
      'offset': instance.offset,
    };

part of 'categories_request_body.dart';

CategoriesRequestBody _$CategoriesRequestBodyFromJson(
        Map<String, dynamic> json) =>
    CategoriesRequestBody(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CategoriesRequestBodyToJson(
        CategoriesRequestBody instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

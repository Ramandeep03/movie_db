import 'package:movie_db/data/entities/base_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_response_model.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  genericArgumentFactories: true,
  explicitToJson: true,
)
class BaseResponseModel<T> extends BaseResponse<T> {
  BaseResponseModel({
    super.page,
    required super.results,
    super.totalPages,
    super.totalResults,
  });

  factory BaseResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$BaseResponseModelFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$BaseResponseModelToJson(this, toJsonT);
}

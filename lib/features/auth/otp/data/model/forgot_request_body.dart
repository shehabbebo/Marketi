import 'package:json_annotation/json_annotation.dart';
part 'forgot_request_body.g.dart';

@JsonSerializable()
class ForgotRequestBody {
  String? email;

  ForgotRequestBody({required this.email});

  Map<String, dynamic> toJson() => _$ForgotRequestBodyToJson(this);
}


import 'dart:convert';

class RegisterApiModel {
  int id;
  String token;

  RegisterApiModel({
    required this.id,
    required this.token,
  });

  factory RegisterApiModel.fromRawJson(String str) => RegisterApiModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RegisterApiModel.fromJson(Map<String, dynamic> json) => RegisterApiModel(
    id: json["id"],
    token: json["token"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "token": token,
  };
}

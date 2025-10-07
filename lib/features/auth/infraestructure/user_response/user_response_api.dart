// To parse this JSON data, do
//
//     final userResponseApi = userResponseApiFromJson(jsonString);

import 'dart:convert';

import 'package:top_jobs/features/auth/data/models/user_model.dart';

UserResponseApi userResponseApiFromJson(String str) => UserResponseApi.fromJson(json.decode(str));

String userResponseApiToJson(UserResponseApi data) => json.encode(data.toJson());

class UserResponseApi {
  String message;
  Data data;

  UserResponseApi({
    required this.message,
    required this.data,
  });

  factory UserResponseApi.fromJson(Map<String, dynamic> json) => UserResponseApi(
    message: json["message"],
    data: json["data"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "data": data,
  };
}


class Data {
  UserModel user;
  String token;
  Data({required this.user, required this.token});

  factory Data.fromJson(Map<String,dynamic> json)=>Data(
    user: UserModel.fromJson(json["user"]),
    token: json["token"]
  );

  Map<String,dynamic> toJson()=>{
    "user":user.toJson(),
    "token":token
  };
}
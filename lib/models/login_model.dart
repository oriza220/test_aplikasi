// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
    String? userEmail;
    String? userPassword;

    LoginModel({
        this.userEmail,
        this.userPassword,
    });

    factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        userEmail: json["user_email"],
        userPassword: json["user_password"],
    );

    Map<String, dynamic> toJson() => {
        "user_email": userEmail,
        "user_password": userPassword,
    };
}


import 'dart:convert';

UserInfo userInfoFromJson(String str) => UserInfo.fromJson(json.decode(str));

String userInfoToJson(UserInfo data) => json.encode(data.toJson());

class UserInfo {
    final String userId;
    final String userEmail;
    final String userName;
    final String userPhoneNumber;

    UserInfo({
        required this.userId,
        required this.userEmail,
        required this.userName,
        required this.userPhoneNumber,
    });

    factory UserInfo.fromJson(Map<String, dynamic> json) => UserInfo(
        userId: json["user_id"],
        userEmail: json["user_email"],
        userName: json["user_name"],
        userPhoneNumber: json["user_phone_number"],
    );

    Map<String, dynamic> toJson() => {
        "user_id": userId,
        "user_email": userEmail,
        "user_name": userName,
        "user_phone_number": userPhoneNumber,
    };
}

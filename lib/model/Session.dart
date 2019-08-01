import 'dart:convert';

class UserSession {
  String username;
  String restaurant_name;
  String contact_email;
  String user_type;
  String merchant_id;
  String token;
  bool is_login;

  UserSession(this.username, this.restaurant_name, this.contact_email,
      this.user_type, this.merchant_id, this.token, this.is_login);

  List<UserSession> getUserSession(String str) {
    final jsonData = json.decode(str);
    return new List<UserSession>.from(
        jsonData.map((x) => UserSession.fromJson(x)));
  }

  factory UserSession.fromJson(Map<String, dynamic> json) => new UserSession(
        json[0]['details']['info']["username"],
        json[0]['details']['info']["restaurant_name"],
        json[0]['details']['info']["contact_email"],
        json[0]['details']['info']["user_type"],
        json[0]['details']['info']["merchant_id"],
        json[0]['details']["token"],
        true,
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "restaurant_name": restaurant_name,
        "contact_email": contact_email,
        "user_type": user_type,
        "merchant_id": merchant_id,
        "token": token,
        "is_login": is_login,
      };
}

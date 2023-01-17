// ignore_for_file: file_names

class AppUsersGetModel {
  String? appUserId;
  String? name;
  String? email;
  int? phone;
  String? userState;

  AppUsersGetModel(
      {this.appUserId, this.name, this.email, this.phone, this.userState});

  AppUsersGetModel.fromJson(Map<String, dynamic> json) {
    appUserId = json['_id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    userState = json['userState'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = appUserId;
    data['name'] = name;
    data['email'] = email;
    data['phone'] = phone;
    data['userState'] = userState;
    return data;
  }
}

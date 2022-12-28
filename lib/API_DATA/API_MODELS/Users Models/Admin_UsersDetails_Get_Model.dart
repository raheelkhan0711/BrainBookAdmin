// ignore_for_file: file_names

class AdminUserDetailsGetModel {
  String? adminUserId;
  String? name;
  String? email;
  int? phone;
  String? userState;
  String? role;

  AdminUserDetailsGetModel(
      {this.adminUserId,
      this.name,
      this.email,
      this.phone,
      this.userState,
      this.role});

  AdminUserDetailsGetModel.fromJson(Map<String, dynamic> json) {
    adminUserId = json['_id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    userState = json['userState'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = adminUserId;
    data['name'] = name;
    data['email'] = email;
    data['phone'] = phone;
    data['userState'] = userState;
    data['role'] = role;
    return data;
  }
}

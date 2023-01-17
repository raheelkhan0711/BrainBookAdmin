// ignore_for_file: file_names

class AdminUserPostModel {
  String? name;
  String? email;
  int? phone;
  String? status;
  String? role;
  String? adminUserId;

  AdminUserPostModel(
      {this.name,
      this.email,
      this.phone,
      this.status,
      this.role,
      this.adminUserId});

  AdminUserPostModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    status = json['status'];
    role = json['role'];
    adminUserId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['phone'] = phone;
    data['status'] = status;
    data['role'] = role;
    data['_id'] = adminUserId;
    return data;
  }
}

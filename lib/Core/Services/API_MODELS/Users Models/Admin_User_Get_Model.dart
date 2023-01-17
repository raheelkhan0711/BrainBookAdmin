// ignore_for_file: file_names
class AdminUserGetModel {
  String? adminUserId;
  String? name;
  String? email;
  int? phone;

  AdminUserGetModel({this.adminUserId, this.name, this.email, this.phone});

  AdminUserGetModel.fromJson(Map<String, dynamic> json) {
    adminUserId = json['_id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = adminUserId;
    data['name'] = name;
    data['email'] = email;
    data['phone'] = phone;
    return data;
  }
}

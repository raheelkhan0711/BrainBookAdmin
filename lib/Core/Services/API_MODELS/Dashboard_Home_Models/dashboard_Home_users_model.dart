// ignore_for_file: camel_case_types, file_names

class Dashboard_Home_Users_Model {
  int? count;

  Dashboard_Home_Users_Model({this.count});

  Dashboard_Home_Users_Model.fromJson(Map<String, dynamic> json) {
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['count'] = count;
    return data;
  }
}

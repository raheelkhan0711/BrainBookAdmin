// ignore_for_file: file_names

class SubscriptionDeleteModel {
  String? id;

  SubscriptionDeleteModel({this.id});

  SubscriptionDeleteModel.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = id;
    return data;
  }
}

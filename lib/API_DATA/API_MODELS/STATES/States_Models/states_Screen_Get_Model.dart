// ignore_for_file: prefer_collection_literals, unnecessary_new, unnecessary_this, file_names
class StatesGetModel {
  String? stateId;
  String? countryId;
  String? state;
  String? imageUrl;

  StatesGetModel({this.stateId, this.countryId, this.state, this.imageUrl});

  StatesGetModel.fromJson(Map<String, dynamic> json) {
    stateId = json['_id'];
    countryId = json['country'];
    state = json['state'];
    imageUrl = json['ImageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.stateId;
    data['country'] = this.countryId;
    data['state'] = this.state;
    data['ImageUrl'] = this.imageUrl;
    return data;
  }
}

class TrespassersModel {
  String? sId;
  String? trespasserName;
  String? address;
  String? trespasserAuthorizer;
  String? locationName;
  String? dateTime;
  String? policeDepartment;
  String? otherNote;
  String? profile;
  String? townCity;
  String? createdAt;
  String? updatedAt;
  // int? iV;

  TrespassersModel(
      {this.sId,
        this.trespasserName,
        this.address,
        this.trespasserAuthorizer,
        this.locationName,
        this.dateTime,
        this.policeDepartment,
        this.otherNote,
        this.profile,
        this.townCity,
        this.createdAt,
        this.updatedAt,
        // this.iV
      });

  TrespassersModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    trespasserName = json['trespasserName'];
    address = json['address'];
    trespasserAuthorizer = json['trespasserAuthorizer'];
    locationName = json['locationName'];
    dateTime = json['dateTime'];
    policeDepartment = json['policeDepartment'];
    otherNote = json['otherNote'];
    profile = json['profile'];
    townCity = json['townCity'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    // iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['trespasserName'] = this.trespasserName;
    data['address'] = this.address;
    data['trespasserAuthorizer'] = this.trespasserAuthorizer;
    data['locationName'] = this.locationName;
    data['dateTime'] = this.dateTime;
    data['policeDepartment'] = this.policeDepartment;
    data['otherNote'] = this.otherNote;
    data['profile'] = this.profile;
    data['townCity'] = this.townCity;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    // data['__v'] = this.iV;
    return data;
  }
}
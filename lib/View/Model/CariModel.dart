class CustomerSummary {
  String? customerId;
  String? name;
  String? customerTypeName;
  String? authorizedName;
  String? photo;
  String? phone;
  String? creationDate;
  int? groupId;
  String? mail;
  int? cariGorusmeleri;
  int? offerCount;
  bool? statusId;
  String? ilName;
  String? ilceName;

  CustomerSummary(
      {this.customerId,
      this.name,
      this.customerTypeName,
      this.authorizedName,
      this.photo,
      this.phone,
      this.creationDate,
      this.groupId,
      this.mail,
      this.cariGorusmeleri,
      this.offerCount,
      this.statusId,
      this.ilName,
      this.ilceName});

  CustomerSummary.fromJson(Map<String, dynamic> json) {
    customerId = json['CustomerId'] ?? "00000000-0000-0000-0000-000000000000";
    name = json['Name'] ?? "Bilinmiyor";
    customerTypeName = json['CustomerTypeName'] ?? "Bilinmiyor";
    authorizedName = json['AuthorizedName'] ?? "Bilinmiyor";
    photo = json['Photo'] ?? "https://service.pvscada.com/DefaultImages/NotFound.png";
    phone = json['Phone'] ?? "0000-000-00-00";
    creationDate = json['CreationDate'] ?? "0000-00-00";
    groupId = json['GroupId'] ?? -1;
    mail = json['mail'] ?? "Bilinmiyor";
    cariGorusmeleri = json['cariGorusmeleri'] ?? 0;
    offerCount = json['OfferCount'] ?? 0;
    statusId = json['statusId'] ?? -1;
    ilName = json['ilName'] ?? "Bilinmiyor";
    ilceName = json['ilceName'] ?? "Bilinmiyor";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['CustomerId'] = customerId;
    data['Name'] = name;
    data['CustomerTypeName'] = customerTypeName;
    data['AuthorizedName'] = authorizedName;
    data['Photo'] = photo;
    data['Phone'] = phone;
    data['CreationDate'] = creationDate;
    data['GroupId'] = groupId;
    data['mail'] = mail;
    data['cariGorusmeleri'] = cariGorusmeleri;
    data['OfferCount'] = offerCount;
    data['statusId'] = statusId;
    data['ilName'] = ilName;
    data['ilceName'] = ilceName;
    return data;
  }
}

class CariGorusmeleri {
  int? id;
  String? interviewDate;
  String? creationDate;
  String? userWhoCreationId;
  String? userWhoCreationName;
  String? note;

  CariGorusmeleri({this.id, this.interviewDate, this.creationDate, this.userWhoCreationId, this.userWhoCreationName, this.note});

  CariGorusmeleri.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    interviewDate = json['InterviewDate'];
    creationDate = json['CreationDate'];
    userWhoCreationId = json['UserWhoCreationId'];
    userWhoCreationName = json['UserWhoCreationName'];
    note = json['Note'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['InterviewDate'] = interviewDate;
    data['CreationDate'] = creationDate;
    data['UserWhoCreationId'] = userWhoCreationId;
    data['UserWhoCreationName'] = userWhoCreationName;
    data['Note'] = note;
    return data;
  }
}

class CustomerModel {
  String? name;
  int? phone;
  String? address;
  bool? institutional;

  CustomerModel({
    this.name,
    this.phone,
    this.address,
    required this.institutional,
  });

  CustomerModel.fromJson(dynamic json) {
    name = json['name'];
    phone = json['phone'];
    address = json['address'];
    institutional = json['institutional'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['phone'] = phone;
    map['address'] = address;
    map['institutional'] = institutional;

    return map;
  }
}

List<CustomerModel> customerModelList = <CustomerModel>[
  CustomerModel(
    name: "Hakkı can şengönül",
    phone: 5365024580,
    address:
        "Tınaztepe mahallesi 3049. sokak. seni gidi fındık kıran apartmanı",
    institutional: false,
  ),
  CustomerModel(
    name: "Hakkı can şengönül",
    phone: 5365024580,
    address: "Tınaztepe mahallesi",
    institutional: true,
  ),
  CustomerModel(
    name: "Hakkı can şengönül",
    phone: 5365024580,
    address: "Tınaztepe mahallesi",
    institutional: true,
  ),
  CustomerModel(
    name: "Hakkı can şengönül",
    phone: 5365024580,
    address: "Tınaztepe mahallesi",
    institutional: true,
  ),
  CustomerModel(
    name: "Hakkı can şengönül",
    phone: 5365024580,
    address: "Tınaztepe mahallesi",
    institutional: true,
  ),
];

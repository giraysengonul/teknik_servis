class LpgStateModel {
  LpgStateModel({
      this.result, 
      this.lastupdate, 
      this.success,});

  LpgStateModel.fromJson(dynamic json) {
    if (json['result'] != null) {
      result = [];
      json['result'].forEach((v) {
        result?.add(Result.fromJson(v));
      });
    }
    lastupdate = json['lastupdate'];
    success = json['success'];
  }
  List<Result>? result;
  String? lastupdate;
  bool? success;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (result != null) {
      map['result'] = result?.map((v) => v.toJson()).toList();
    }
    map['lastupdate'] = lastupdate;
    map['success'] = success;
    return map;
  }

}

class Result {
  Result({
      this.marka, 
      this.benzin, 
  });

  Result.fromJson(dynamic json) {
    marka = json['marka'];
    benzin = json['benzin'];

  }
  String? marka;
  double? benzin;


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['marka'] = marka;
    map['benzin'] = benzin;

    return map;
  }

}
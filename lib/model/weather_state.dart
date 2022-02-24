class WeatherStateModel {
  WeatherStateModel({
      this.success, 
      this.city, 
      this.result,});

  WeatherStateModel.fromJson(dynamic json) {
    success = json['success'];
    city = json['city'];
    if (json['result'] != null) {
      result = [];
      json['result'].forEach((v) {
        result?.add(Result.fromJson(v));
      });
    }
  }
  bool? success;
  String? city;
  List<Result>? result;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    map['city'] = city;
    if (result != null) {
      map['result'] = result?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Result {
  Result({
      this.date, 
      this.day, 
      this.icon, 
      this.description, 
      this.status, 
      this.degree, 
      this.min, 
      this.max, 
      this.night, 
      this.humidity,});

  Result.fromJson(dynamic json) {
    date = json['date'];
    day = json['day'];
    icon = json['icon'];
    description = json['description'];
    status = json['status'];
    degree = json['degree'];
    min = json['min'];
    max = json['max'];
    night = json['night'];
    humidity = json['humidity'];
  }
  String? date;
  String? day;
  String? icon;
  String? description;
  String? status;
  String? degree;
  String? min;
  String? max;
  String? night;
  String? humidity;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['day'] = day;
    map['icon'] = icon;
    map['description'] = description;
    map['status'] = status;
    map['degree'] = degree;
    map['min'] = min;
    map['max'] = max;
    map['night'] = night;
    map['humidity'] = humidity;
    return map;
  }

}
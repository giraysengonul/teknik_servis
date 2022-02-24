import 'package:flutter/material.dart';
import 'package:technical_service/ui/widget/job_widget/table_container_widget.dart';

class JobModel {
  JobModel({
    this.customer,
    this.jobDescription,
    this.detail,
  });

  JobModel.fromJson(dynamic json) {
    customer = json['customer'];
    jobDescription = json['jobDescription'];
    detail = json['detail'];
  }
  String? customer;
  String? jobDescription;
  String? detail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['customer'] = customer;
    map['jobDescription'] = jobDescription;
    map['detail'] = detail;
    return map;
  }
}

List jobContainerList = [
  tableContainerWidget(
      customer: 'Hakkı Can Şengönül',
      jobDescription: "Kamera Arızası",
      detail: "Kamera Arızası olan kurumun "
          "ön cephesinde bulunnan "),
  tableContainerWidget(
      customer: 'Hakkı Can Şengönül',
      jobDescription: "Kamera Arızası",
      detail: "Kamera Arızası olan kurumun "
          "ön cephesinde bulunnan "),
  tableContainerWidget(
      customer: 'Hakkı Can Şengönül',
      jobDescription: "Kamera Arızası",
      detail: "Kamera Arızası olan kurumun "
          "ön cephesinde bulunnan "),
  tableContainerWidget(
      customer: 'Hakkı Can Şengönül',
      jobDescription: "Kamera Arızası",
      detail: "Kamera Arızası olan kurumun "
          "ön cephesinde bulunnan "),
];

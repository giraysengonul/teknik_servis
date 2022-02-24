class ReportModel {
  ReportModel({
    this.workInProgress,
    this.pendingJobs,
    this.completedWorks,
  });

  ReportModel.fromJson(dynamic json) {
    workInProgress = json['workInProgress'];
    pendingJobs = json['pendingJobs'];
    completedWorks = json['completedWorks'];
  }
  int? workInProgress;
  int? pendingJobs;
  int? completedWorks;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['workInProgress'] = workInProgress;
    map['pendingJobs'] = pendingJobs;
    map['completedWorks'] = completedWorks;
    return map;
  }
}

Map<String, double> dataMap = {
  "İşlerim": 1,
  "Bekleyen İşler": 3,
  "Tamamlanan İşlerim": 5,
};

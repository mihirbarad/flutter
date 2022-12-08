class ExpenceModel {
  int? id;
  String? title;
  int? amount;
  String? date;
  String? time;
  String? methord;
  String? bool;

  ExpenceModelMap() {
    var mapping = Map<String, dynamic>();
    mapping['id'] = id ?? null;
    mapping['title'] = title!;
    mapping['amount'] = amount ?? null;
    mapping['date'] = date!;
    mapping['time'] = time!;
    mapping['methord'] = methord!;
    mapping['bool'] = bool!;

    return mapping;
  }
}

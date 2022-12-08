class HistoryModel {
  int? id;
  String? title;
  int? amount;
  String? date;
  String? type;
  String? icons;

  HistoryModelMap() {
    var mapping = Map<String, dynamic>();
    mapping['id'] = id ?? null;
    mapping['title'] = title!;
    mapping['amount'] = amount ?? null;
    mapping['date'] = date!;
    mapping['type'] = type!;
    mapping['icons'] = icons!;

    return mapping;
  }
}

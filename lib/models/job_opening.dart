/// id : 1
/// title : "Database Admin"
/// company : "Oracle"

class JobOpenings {
  JobOpenings({
    num? id,
    String? title,
    String? company,
  }) {
    _id = id;
    _title = title;
    _company = company;
  }

  JobOpenings.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _company = json['company'];
  }
  num? _id;
  String? _title;
  String? _company;
  JobOpenings copyWith({
    num? id,
    String? title,
    String? company,
  }) =>
      JobOpenings(
        id: id ?? _id,
        title: title ?? _title,
        company: company ?? _company,
      );
  num? get id => _id;
  String? get title => _title;
  String? get company => _company;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['company'] = _company;
    return map;
  }
}

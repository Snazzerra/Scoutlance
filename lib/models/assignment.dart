/// jobOpeningId : 3
/// status : "IN_INTERVIEW"
/// createdTs : "2023-05-10T12:12:00"
/// updatedTs : "2023-05-12T15:20:00"

class Assignments {
  Assignments({
    num? jobOpeningId,
    String? status,
    String? createdTs,
    String? updatedTs,
  }) {
    _jobOpeningId = jobOpeningId;
    _status = status;
    _createdTs = createdTs;
    _updatedTs = updatedTs;
  }

  Assignments.fromJson(dynamic json) {
    _jobOpeningId = json['jobOpeningId'];
    _status = json['status'];
    _createdTs = json['createdTs'];
    _updatedTs = json['updatedTs'];
  }
  num? _jobOpeningId;
  String? _status;
  String? _createdTs;
  String? _updatedTs;
  Assignments copyWith({
    num? jobOpeningId,
    String? status,
    String? createdTs,
    String? updatedTs,
  }) =>
      Assignments(
        jobOpeningId: jobOpeningId ?? _jobOpeningId,
        status: status ?? _status,
        createdTs: createdTs ?? _createdTs,
        updatedTs: updatedTs ?? _updatedTs,
      );
  num? get jobOpeningId => _jobOpeningId;
  String? get status => _status;
  String? get createdTs => _createdTs;
  String? get updatedTs => _updatedTs;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['jobOpeningId'] = _jobOpeningId;
    map['status'] = _status;
    map['createdTs'] = _createdTs;
    map['updatedTs'] = _updatedTs;
    return map;
  }
}

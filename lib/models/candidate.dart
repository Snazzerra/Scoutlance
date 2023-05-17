import 'package:scoutlance/models/assignment.dart';

/// fullName : "Adam Jones"
/// email : "adam.jones@gmail.com"
/// phoneNumber : null
/// linkedin : null
/// status : "ACTIVELY_LOOKING"
/// jobTtile : "DevOps Engineer"
/// assignments : [{"jobOpeningId":3,"status":"IN_INTERVIEW","createdTs":"2023-05-10T12:12:00","updatedTs":"2023-05-12T15:20:00"},{"jobOpeningId":4,"status":"OFFER_ACCEPTED","createdTs":"2023-05-09T12:12:00","updatedTs":"2023-05-13T10:20:00"}]

class Candidate {
  Candidate(
      {String? fullName,
      String? email,
      dynamic phoneNumber,
      dynamic linkedin,
      String? status,
      String? jobTtile,
      List<Assignments>? assignments,
      bool hasAssignedJob = false}) {
    _fullName = fullName;
    _email = email;
    _phoneNumber = phoneNumber;
    _linkedin = linkedin;
    _status = status;
    _jobTtile = jobTtile;
    _assignments = assignments;
  }

  Candidate.fromJson(dynamic json) {
    _fullName = json['fullName'];
    _email = json['email'];
    _phoneNumber = json['phoneNumber'];
    _linkedin = json['linkedin'];
    _status = json['status'];
    _jobTtile = json['jobTtile'];
    _hasAssignedJob = false;
    if (json['assignments'] != null) {
      _assignments = [];
      json['assignments'].forEach((v) {
        _hasAssignedJob = true;
        _assignments?.add(Assignments.fromJson(v));
      });
    }
  }
  String? _fullName;
  String? _email;
  dynamic _phoneNumber;
  dynamic _linkedin;
  String? _status;
  String? _jobTtile;
  List<Assignments>? _assignments;
  bool _hasAssignedJob = false;
  Candidate copyWith({
    String? fullName,
    String? email,
    dynamic phoneNumber,
    dynamic linkedin,
    String? status,
    String? jobTtile,
    List<Assignments>? assignments,
  }) =>
      Candidate(
        fullName: fullName ?? _fullName,
        email: email ?? _email,
        phoneNumber: phoneNumber ?? _phoneNumber,
        linkedin: linkedin ?? _linkedin,
        status: status ?? _status,
        jobTtile: jobTtile ?? _jobTtile,
        assignments: assignments ?? _assignments,
      );
  String? get fullName => _fullName;
  String? get email => _email;
  dynamic get phoneNumber => _phoneNumber;
  dynamic get linkedin => _linkedin;
  String? get status => _status;
  String? get jobTtile => _jobTtile;
  bool get hasAssignedJob => _hasAssignedJob;
  List<Assignments>? get assignments => _assignments;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['fullName'] = _fullName;
    map['email'] = _email;
    map['phoneNumber'] = _phoneNumber;
    map['linkedin'] = _linkedin;
    map['status'] = _status;
    map['jobTtile'] = _jobTtile;
    if (_assignments != null) {
      map['assignments'] = _assignments?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

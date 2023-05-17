import 'package:scoutlance/models/candidate.dart';
import 'package:scoutlance/models/job_opening.dart';

/// cadidates : [{"fullName":"Adam Jones","email":"adam.jones@gmail.com","phoneNumber":null,"linkedin":null,"status":"ACTIVELY_LOOKING","jobTtile":"DevOps Engineer","assignments":[{"jobOpeningId":3,"status":"IN_INTERVIEW","createdTs":"2023-05-10T12:12:00","updatedTs":"2023-05-12T15:20:00"},{"jobOpeningId":4,"status":"OFFER_ACCEPTED","createdTs":"2023-05-09T12:12:00","updatedTs":"2023-05-13T10:20:00"}]},{"fullName":"Will Smith","email":"will.smith@gmail.com","phoneNumber":null,"linkedin":null,"status":"BLACKLISTED","jobTtile":"Database Admin","assignments":[{"jobOpeningId":1,"status":"OFFER_refused","createdTs":"2023-01-09T12:12:00","updatedTs":"2023-05-13T10:20:00"}]},{"fullName":"Marry Poppings","email":"marry.poppings@gmail.com","phoneNumber":null,"linkedin":null,"status":"DO_NOT_CONTACT","jobTtile":"Frontend Developer","assignments":null},{"fullName":"Mike Jagger","email":"mike.jagger@gmail.com","phoneNumber":"404389482934","linkedin":"https://www.linkedin.com/in/mikejagger/","status":null,"jobTtile":null,"assignments":[]},{"fullName":"Ricky Martin","email":"ricky.martin@gmail.com","phoneNumber":"9589589345","linkedin":null,"status":"ACTIVELY_LOOKING","jobTtile":"DevOps Engineer","assignments":[{"jobOpeningId":3,"status":"OFFER_REFUSED","createdTs":"2023-05-10T12:12:00","updatedTs":"2023-05-12T15:20:00"}]},{"fullName":"Salman Khan","email":"salman.khan@gmail.com","phoneNumber":null,"linkedin":null,"status":"ACTIVELY_LOOKING","jobTtile":"Technical Support Representative","assignments":null},{"fullName":"Valentino Rossi","email":"valentino.rossi@gmail.com","phoneNumber":null,"linkedin":null,"status":"ACTIVELY_LOOKING","jobTtile":"Backend Engineer","assignments":[]},{"fullName":"Remi Malek","email":"remi.malek@live.com","phoneNumber":"76788789898","linkedin":null,"status":"BLACKLISTED","jobTtile":"DevOps Engineer","assignments":[{"jobOpeningId":3,"status":"OFFER_REFUSED","createdTs":"2023-05-10T12:12:00","updatedTs":"2023-05-12T15:20:00"},{"jobOpeningId":4,"status":"OFFER_REFUSED","createdTs":"2023-05-09T12:12:00","updatedTs":"2023-05-13T10:20:00"}]},{"fullName":"Bono","email":"bono@gmail.com","phoneNumber":null,"linkedin":null,"status":"ACTIVELY_LOOKING","jobTtile":"Full Stack Engineer","assignments":[]},{"fullName":"Adele","email":"adele@gmail.com","phoneNumber":"4243242343","linkedin":null,"status":"DO_NOT_CONTACT","jobTtile":"Fraud Specialist","assignments":[{"jobOpeningId":2,"status":"OFFER_REFUSED","createdTs":"2023-05-09T12:12:00","updatedTs":"2023-05-13T10:20:00"}]},{"fullName":"Mike Tyson","email":"mike.tyson@gmail.com","phoneNumber":null,"linkedin":null,"status":"BLACKLISTED","jobTtile":"DevOps Engineer","assignments":[]},{"fullName":"Rita Oro","email":"rita.oro@gmail.com","phoneNumber":"432424324","linkedin":null,"status":"ACTIVELY_LOOKING","jobTtile":"Scrum Master","assignments":[]},{"fullName":"Nelson Mandela","email":"nelson@gmail.com","phoneNumber":null,"linkedin":null,"status":"ACTIVELY_LOOKING","jobTtile":"Recruitment Spcialist","assignments":[]},{"fullName":"Pamela Anderson","email":"pamela.anderson@gmail.com","phoneNumber":null,"linkedin":null,"status":"ACTIVELY_LOOKING","jobTtile":"Manual Tester","assignments":[]},{"fullName":"Taylor Swift","email":"taylor.swift@gmail.com","phoneNumber":null,"linkedin":null,"status":"ARCHIVED","jobTtile":"DevOps Engineer","assignments":[]},{"fullName":"Silly Twillie","email":"silly.twillie@gmail.com","phoneNumber":null,"linkedin":null,"status":"ACTIVELY_LOOKING","jobTtile":"DevOps Engineer","assignments":[{"jobOpeningId":3,"status":"IN_INTERVIEW","createdTs":"2023-05-10T12:12:00","updatedTs":"2023-05-12T15:20:00"}]},{"fullName":"Maria Tanase","email":"maria.tanase@gmail.com","phoneNumber":null,"linkedin":null,"status":"ACTIVELY_LOOKING","jobTtile":"Software Architect","assignments":[]}]
/// jobOpenings : [{"id":1,"title":"Database Admin","company":"Oracle"},{"id":2,"title":"Fraud Support Specialist","company":"Vodafone Shared Services"},{"id":3,"title":"Microsft","company":"DevOps Engineer"},{"id":4,"title":"Stripe","company":"DevOps Engineer"}]

class ResCandidates {
  ResCandidates({
    List<Candidate>? cadidates,
    List<JobOpenings>? jobOpenings,
  }) {
    _cadidates = cadidates;
    _jobOpenings = jobOpenings;
  }

  ResCandidates.fromJson(dynamic json) {
    if (json['cadidates'] != null) {
      _cadidates = [];
      json['cadidates'].forEach((v) {
        _cadidates?.add(Candidate.fromJson(v));
      });
    }
    if (json['jobOpenings'] != null) {
      _jobOpenings = [];
      json['jobOpenings'].forEach((v) {
        _jobOpenings?.add(JobOpenings.fromJson(v));
      });
    }
  }
  List<Candidate>? _cadidates;
  List<JobOpenings>? _jobOpenings;
  ResCandidates copyWith({
    List<Candidate>? cadidates,
    List<JobOpenings>? jobOpenings,
  }) =>
      ResCandidates(
        cadidates: cadidates ?? _cadidates,
        jobOpenings: jobOpenings ?? _jobOpenings,
      );
  List<Candidate>? get cadidates => _cadidates;
  List<JobOpenings>? get jobOpenings => _jobOpenings;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_cadidates != null) {
      map['cadidates'] = _cadidates?.map((v) => v.toJson()).toList();
    }
    if (_jobOpenings != null) {
      map['jobOpenings'] = _jobOpenings?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

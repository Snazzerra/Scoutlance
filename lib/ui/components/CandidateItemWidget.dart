import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scoutlance/helper/url_utility.dart';
import 'package:scoutlance/models/candidate.dart';
import 'package:scoutlance/services/constants.dart';
import 'package:scoutlance/style/my_theme.dart';
import 'package:url_launcher/url_launcher.dart';

import 'TextButtonWithIconWidget.dart';

class CandidateItemWidget extends StatelessWidget {
  final bool isAssignedJob;
  final Candidate candidate;
  const CandidateItemWidget(
      {Key? key, this.isAssignedJob = true, required this.candidate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow(blurRadius: 1, color: Colors.grey.shade300)]),
      child: Column(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _candidateDetailsWidget(context),
                const Divider(
                  thickness: 1.2,
                  indent: 65,
                  endIndent: 65,
                ),
                _emailPhoneSectionWidget(context),
                candidate.hasAssignedJob
                    ? _assignedJobSectionWidget(context)
                    : _notAssignedJobSectionWidget(context)
              ],
            ),
          )
        ],
      ),
    );
  }

  _candidateDetailsWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: MyTheme.primary.shade200,
                child: Text(
                  candidate.fullName!.substring(0, 2),
                  style: Theme.of(context).primaryTextTheme.headlineSmall,
                ),
              ),
              Positioned.fill(
                  child: Align(
                alignment: Alignment.bottomRight,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    backgroundColor: getCandidateStatusColor(),
                    radius: 8,
                  ),
                ),
              ))
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    candidate.fullName!,
                    textScaleFactor: 0.8,
                    style: Theme.of(context).primaryTextTheme.titleLarge,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    candidate.jobTtile == null ? "-" : candidate.jobTtile!,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/images/ic_menu.png",
              height: 20,
            ),
          )
        ],
      ),
    );
  }

  _emailPhoneSectionWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButtonWithIconWidget(
                  icon: Icons.mail_outline,
                  text: candidate.email ?? "n/a",
                  onPressed: candidate.email == null
                      ? null
                      : () {
                          UrlUtility().openEmail(candidate.email!);
                        },
                ),
                const SizedBox(
                  height: 5,
                ),
                TextButtonWithIconWidget(
                    icon: Icons.call_outlined,
                    text: candidate.phoneNumber ?? "n/a",
                    onPressed: candidate.phoneNumber == null
                        ? null
                        : () {
                            UrlUtility().makePhoneCall(candidate.phoneNumber!);
                          }),
              ],
            ),
          ),
          IconButton(
            onPressed: candidate.linkedin == null
                ? null
                : () {
                    launchUrl(Uri.parse(candidate.linkedin!));
                  },
            tooltip: candidate.linkedin == null ? "n/a" : "",
            icon: const FaIcon(FontAwesomeIcons.linkedin),
          )
        ],
      ),
    );
  }

  _assignedJobSectionWidget(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: MyTheme.primary.shade50,
          borderRadius:
              const BorderRadius.vertical(bottom: Radius.circular(15))),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: Text(
                      candidate.jobTtile == null ? "n/a" : candidate.jobTtile!,
                      textScaleFactor: 0.8,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  // SizedBox(
                  //   height: 5,
                  // ),
                  Text(
                    "Company Name",
                    style: Theme.of(context).textTheme.titleSmall,
                  )
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: getAssignmentStatusColor(
                          candidate.assignments!.last.status!),
                      borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    candidate.assignments!.last.status!
                        .replaceAll("_", " ")
                        .toLowerCase(),
                    style: Theme.of(context).primaryTextTheme.titleSmall,
                  ),
                ),
                // SizedBox(
                //   height: 2,
                // ),
                Text(
                  "40 mins ago",
                  style: Theme.of(context).textTheme.titleSmall,
                )
              ],
            ),
            Row(
              children: [
                const VerticalDivider(
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                  ),
                  child: Text(
                    "+ 5",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: MyTheme.primary),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  _notAssignedJobSectionWidget(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: MyTheme.primary.shade50,
          borderRadius:
              const BorderRadius.vertical(bottom: Radius.circular(15))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: Text(
              "No assignments",
              // textScaleFactor: 0.8,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          Row(
            children: [
              const Icon(
                Icons.folder,
                color: Colors.black45,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Assign",
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          )
        ],
      ),
    );
  }

  getCandidateStatusColor() {
    if (candidate.status == null ||
        candidate.status!.toUpperCase() == CandidateStatus.ARCHIVED.name) {
      return Colors.grey;
    } else if (candidate.status!.toUpperCase() ==
        CandidateStatus.ACTIVELY_LOOKING.name) {
      return Colors.green;
    } else if (candidate.status!.toUpperCase() ==
        CandidateStatus.BLACKLISTED.name) {
      return Colors.black;
    } else if (candidate.status!.toUpperCase() ==
        CandidateStatus.DO_NOT_CONTACT.name) {
      return Colors.orange;
    } else {
      return Colors.grey;
    }
  }

  getAssignmentStatusColor(String status) {
    if (status.toUpperCase() == AssignmentStatus.OFFER_REFUSED.name) {
      return Colors.red.shade200;
    } else if (status.toUpperCase() == AssignmentStatus.IN_INTERVIEW.name) {
      return Colors.orange.shade200;
    } else if (status.toUpperCase() == AssignmentStatus.OFFER_ACCEPTED.name) {
      return Colors.green.shade200;
    } else {
      return Colors.grey;
    }
  }
}

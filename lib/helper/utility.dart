import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:scoutlance/style/my_theme.dart';

// final kAnalytics = FirebaseAnalytics();
// final kScreenloader = CustomLoader();

class GlobalWidgets {
  static double getHeight(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    return deviceHeight;
  }

  static double getWidth(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    return deviceWidth;
  }

  static double getDimention(context, double unit) {
    if (getWidth(context) <= 360.0) {
      return unit / 1.3;
    } else {
      return unit;
    }
  }
}

class NoKeyboardEditableTextFocusNode extends FocusNode {
  @override
  bool consumeKeyboardToken() {
    // prevents keyboard from showing on first focus
    return false;
  }

  @override
  bool get hasFocus => false;
}

Future<bool> confirmAlert(BuildContext context, String confirmText,
    {String title = 'Gift Track',
    String okText = 'OK',
    String cancelText = 'CANCEL'}) async {
  bool result = false;
  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          title,
          style: Theme.of(context).primaryTextTheme.titleLarge,
        ),
        content: Text(confirmText,
            style: Theme.of(context).primaryTextTheme.titleMedium),
        actions: <Widget>[
          TextButton(
              onPressed: () =>
                  {result = false, Navigator.of(context).pop(false)},
              child: Text(cancelText)),
          TextButton(
            onPressed: () => {result = true, Navigator.of(context).pop(true)},
            child: Text(okText),
          ),
        ],
      );
    },
  );
  return result;
}

void showAlert(
  BuildContext context, {
  Function? onPressedOk,
  required String title,
  String okText = 'OK',
}) async {
  showDialog(
      context: context,
      builder: (context) {
        return customAlert(
          context,
          onPressedOk: onPressedOk,
          title: title,
          okText: okText,
        );
      });
}

Widget customAlert(BuildContext context,
    {Function? onPressedOk,
    required String title,
    String okText = 'OK',
    String? cancelText}) {
  return AlertDialog(
    title: Text('Compte désactivé',
        style: TextStyle(
            fontSize: GlobalWidgets.getDimention(context, 25),
            color: Colors.black54)),
    content: Text(title, style: const TextStyle(color: Colors.black45)),
    actions: <Widget>[
      cancelText != null
          ? TextButton(
              // textColor: Colors.grey,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(cancelText),
            )
          : Container(),
      TextButton(
        // textColor: Theme.of(context).primaryColor,
        onPressed: () {
          Navigator.pop(context);
          if (onPressedOk != null) onPressedOk();
        },
        child: Text(okText),
      )
    ],
  );
}

void showSnakbar(BuildContext context, String text) {
  final snackBar = SnackBar(content: Text(text));
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

Widget emptyDataText(text) {
  return Center(
      child: Text(
    text,
    textAlign: TextAlign.center,
    style: MyTheme.getMaterialTextTheme(MyTheme.primary.shade400).titleMedium,
  ));
}

Widget showLoader() {
  return const Center(child: CircularProgressIndicator());
}

Widget emptyDataTexterrorText(text) {
  return Center(
      child: Text(
    text,
    textAlign: TextAlign.center,
    style: MyTheme.getMaterialTextTheme(MyTheme.errorColor).titleMedium,
  ));
}
//
// String getLocalDateTime(String dateTime, String dateFormat) {
//   if (dateTime == null || dateTime.isEmpty) {
//     return '';
//   }
//   var localTime = DateTime.parse(dateTime).toLocal();
//   var dat = DateFormat(dateFormat).format(localTime);
//   return dat;
// }
//
// String getLocalDateTimeStdFormat(DateTime dateTime) {
//   if (dateTime == null) {
//     return '';
//   }
//   // var localTime = DateTime.parse(dateTime).toLocal();
//   // var dat = DateFormat("dd-MM-yyyy hh:mm").format(dateTime);
//   var dat = DateFormat("yyyy-MM-dd").format(dateTime);
//   return dat;
// }
//
// String getFormattedDate(DateTime dateTime, String format) {
//   if (dateTime == null) {
//     return '';
//   }
//   // var localTime = DateTime.parse(dateTime).toLocal();
//   // var dat = DateFormat("dd-MM-yyyy hh:mm").format(dateTime);
//   var dat = DateFormat(format).format(dateTime);
//   return dat;
// }
//
// String getLocalDateStdFormat(DateTime dateTime) {
//   if (dateTime == null) {
//     return '';
//   }
//   // var localTime = DateTime.parse(dateTime).toLocal();
//   // var dat = DateFormat("dd-MM-yyyy hh:mm").format(dateTime);
//   var dat = DateFormat("dd MMM, yyyy").format(dateTime);
//   return dat;
// }
//
// String getStandardFormattedDateFromString(String dateTimeStr) {
//   if (dateTimeStr.isEmpty) {
//     return '';
//   }
//   // var localTime = DateTime.parse(dateTime).toLocal();
//   // var dat = DateFormat("dd-MM-yyyy hh:mm").format(dateTime);
//   var dat =
//       DateFormat("dd MMM, yyyy hh:mm").format(DateTime.parse(dateTimeStr));
//   return dat;
// }
//
// String getLocalDateTimeStdFormatFromString(String dateTimeStr) {
//   if (dateTimeStr == null || dateTimeStr.isEmpty) {
//     return '';
//   }
//   var localTime = DateTime.parse(dateTimeStr).toLocal();
//   var dat = DateFormat("dd MMM, yyyy  hh:mm a").format(localTime);
//   return dat;
// }
//
// TimeOfDay getTimeFromDate(DateTime dateTime) {
//   return TimeOfDay(hour: dateTime.hour, minute: dateTime.minute);
// }
//
// // -----------------------------------
// String getPostTime2(String date) {
//   if (date == null || date.isEmpty) {
//     return '';
//   }
//   var dt = DateTime.parse(date).toLocal();
//   var dat =
//       DateFormat.jm().format(dt) + ' - ' + DateFormat("dd MMM yy").format(dt);
//   return dat;
// }
//
// String getdob(String date) {
//   if (date == null || date.isEmpty) {
//     return '';
//   }
//   var dt = DateTime.parse(date).toLocal();
//   var dat = DateFormat.yMMMd().format(dt);
//   return dat;
// }
//
// String getJoiningDate(String date) {
//   if (date == null || date.isEmpty) {
//     return '';
//   }
//   var dt = DateTime.parse(date).toLocal();
//   var dat = DateFormat("MMMM yyyy").format(dt);
//   return 'Joined $dat';
// }
//
// String getChatTime(String date) {
//   if (date == null || date.isEmpty) {
//     return '';
//   }
//   String msg = '';
//   var dt = DateTime.parse(date).toLocal();
//
//   if (DateTime.now().toLocal().isBefore(dt)) {
//     return DateFormat.jm().format(DateTime.parse(date).toLocal()).toString();
//   }
//
//   var dur = DateTime.now().toLocal().difference(dt);
//   if (dur.inDays > 0) {
//     msg = '${dur.inDays} d';
//     return dur.inDays == 1 ? '1d' : DateFormat("dd MMM").format(dt);
//   } else if (dur.inHours > 0) {
//     msg = '${dur.inHours} h';
//   } else if (dur.inMinutes > 0) {
//     msg = '${dur.inMinutes} m';
//   } else if (dur.inSeconds > 0) {
//     msg = '${dur.inSeconds} s';
//   } else {
//     msg = 'now';
//   }
//   return msg;
// }

String? getSocialLinks(String url) {
  if (url.isNotEmpty) {
    url = url.contains("https://www") || url.contains("http://www")
        ? url
        : url.contains("www") &&
                (!url.contains('https') && !url.contains('http'))
            ? 'https://$url'
            : 'https://www.$url';
  } else {
    return null;
  }
  cprint('Launching URL : $url');
  return url;
}

// launchURL(String url) async {
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     cprint('Could not launch $url');
//   }
// }

void cprint(dynamic data, {String? errorIn, String? event}) {
  if (errorIn != null) {
  } else if (data != null) {
    log(
      data,
      time: DateTime.now(),
    );
  }
  if (event != null) {
    // logEvent(event);
  }
}

// void logEvent(String event, {Map<String, dynamic> parameter}) {
//   kReleaseMode
//       ? kAnalytics.logEvent(name: event, parameters: parameter)
//       : print("[EVENT]: $event");
// }

//
// void share(String message, {String subject}) {
//   Share.share(message, subject: subject);
// }

List<String> getHashTags(String text) {
  RegExp reg = RegExp(
      r"([#])\w+|(https?|ftp|file|#)://[-A-Za-z0-9+&@#/%?=~_|!:,.;]+[-A-Za-z0-9+&@#/%=~_|]*");
  Iterable<Match> matches = reg.allMatches(text);
  List<String> resultMatches = [];
  for (Match match in matches) {
    if (match.group(0)!.isNotEmpty) {
      var tag = match.group(0);
      resultMatches.add(tag!);
    }
  }
  return resultMatches;
}

String getUserName({String? name, String? id}) {
  String userName = '';
  name = name!.split(' ')[0];
  id = id!.substring(0, 4).toLowerCase();
  userName = '@$name$id';
  return userName;
}

// bool validateCredentials(
//     GlobalKey<ScaffoldState> _scaffoldKey, String email, String password) {
//   if (email == null || email.isEmpty) {
//     customSnackBar(_scaffoldKey, 'Please enter email id');
//     return false;
//   } else if (password == null || password.isEmpty) {
//     customSnackBar(_scaffoldKey, 'Please enter password');
//     return false;
//   } else if (password.length < 8) {
//     customSnackBar(_scaffoldKey, 'Password must me 8 character long');
//     return false;
//   }

//   var status = validateEmal(email);
//   if (!status) {
//     customSnackBar(_scaffoldKey, 'Please enter valid email id');
//     return false;
//   }
//   return true;
// }

bool validateEmal(String email) {
  String p =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  RegExp regExp = RegExp(p);

  var status = regExp.hasMatch(email);
  return status;
}

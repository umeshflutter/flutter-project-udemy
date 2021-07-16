/*import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../CommonClass/popup.dart';
import '../CommonClass/popup_content.dart';
import 'Constant.dart';
import 'package:intl/intl.dart';

bool isLoggedIn = false;

class BottomButton extends StatelessWidget {
  final GestureTapCallback onPressed;
  final String title;

  BottomButton(String this.title, {@required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: AppColor.PRIMARY,
      child: Text(
        title,
        style: TextStyle(
            color: AppColor.BTN_TEXT_WHITE, fontSize: FontSize.BTN_BOTTOM),
      ),
      height: ScreenSize.BTN_BOTTOM,
      onPressed: onPressed,
      splashColor: Colors.orange[100],
      //shape: const StadiumBorder(),
    );

/*
    return RawMaterialButton(
      fillColor: Colors.green,
      splashColor: Colors.greenAccent,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              Icons.face,
              color: Colors.amber,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              title,
              maxLines: 1,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      onPressed: onPressed,
      shape: const StadiumBorder(),
    );*/
  }
}

getTextFiledDecoration(String labelText, IconData icon) {
  return InputDecoration(
    fillColor: Colors.white,
    prefixIcon: Icon(
      icon == null ? Icons.details : icon,
      color: AppColor.PRIMARY,
    ),
    border: OutlineInputBorder(),
    focusedBorder:
        OutlineInputBorder(borderSide: BorderSide(color: AppColor.PRIMARY)),
    enabledBorder:
        OutlineInputBorder(borderSide: BorderSide(color: AppColor.PRIMARY)),
    labelText: labelText, //STR_COMMON.NAME,
  );
}

convertUrlToId(String url, {bool trimWhitespaces = true}) {
  assert(url?.isNotEmpty ?? false, 'Url cannot be empty');
  if (!url.contains("http") && (url.length == 11)) return url;
  if (trimWhitespaces) url = url.trim();

  for (var exp in [
    RegExp(
        r"^https:\/\/(?:www\.|m\.)?youtube\.com\/watch\?v=([_\-a-zA-Z0-9]{11}).*$"),
    RegExp(
        r"^https:\/\/(?:www\.|m\.)?youtube(?:-nocookie)?\.com\/embed\/([_\-a-zA-Z0-9]{11}).*$"),
    RegExp(r"^https:\/\/youtu\.be\/([_\-a-zA-Z0-9]{11}).*$")
  ]) {
    Match match = exp.firstMatch(url);
    if (match != null && match.groupCount >= 1) return match.group(1);
  }

  return null;
}

isShowLoader(BuildContext context, {BuildContext popupContext}) {}

isHideLoader() {}

getCurrentUtcDate() {
  final DateTime now = DateTime.now().toUtc();
  final DateFormat formatter =
      DateFormat(ALL_DATE_FORMAT.dateYYYY_MM_DD_HH_MM_SS);
  final String formatted = formatter.format(now);
  //print('Current UTC Time: $formatted');

  return formatted;
}

convertUtcToLocalDate(DateTime date) {
  var dateTime = DateFormat(ALL_DATE_FORMAT.dateYYYY_MM_DD_HH_MM_SS)
      .parse(date.toString(), true);
  var dateLocal = dateTime.toLocal();

  return dateLocal;
}

//TimeAgo.timeAgoSinceDate(item.created_date), // In this example, 09-10-2020 08:29AM date format is getting passed, but you can pass it in any format.
//  static String timeAgoSinceDate(String dateString,
//      {bool numericDates = true}) {

class TimeAgo {
  static String timeAgoSinceDate(String dateString, bool numericDates) {
    DateTime notificationDate =
        DateFormat(ALL_DATE_FORMAT.dateYYYY_MM_DD_HH_MM_SS).parse(dateString);
    final date2 = DateTime.now();
    final difference =
        date2.difference(convertUtcToLocalDate(notificationDate));
    //print(convertUtcToLocalDate(notificationDate));
    //print(notificationDate);

    if (difference.inDays > 8) {
      return dateString;
    } else if ((difference.inDays / 7).floor() >= 1) {
      return (numericDates) ? '1 week ago' : 'Last week';
    } else if (difference.inDays >= 2) {
      return '${difference.inDays} days ago';
    } else if (difference.inDays >= 1) {
      return (numericDates) ? '1 day ago' : 'Yesterday';
    } else if (difference.inHours >= 2) {
      return '${difference.inHours} hours ago';
    } else if (difference.inHours >= 1) {
      return (numericDates) ? '1 hour ago' : 'An hour ago';
    } else if (difference.inMinutes >= 2) {
      return '${difference.inMinutes} minutes ago';
    } else if (difference.inMinutes >= 1) {
      return (numericDates) ? '1 minute ago' : 'A minute ago';
    } /*else if (difference.inSeconds >= 3) {
      return '${difference.inSeconds} seconds ago';
    } */
    else {
      return 'Just now';
    }
  }
}*/

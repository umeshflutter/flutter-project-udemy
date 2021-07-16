import 'package:flutter/material.dart';

class AppColor {
  static Color PRIMARY = HexColor("#FC7243");

  static Color BTN_BG_PRIMARY = PRIMARY;
  static Color BTN_TEXT_PRIMARY = PRIMARY;
  static Color BTN_TEXT_WHITE = Colors.white;
  static Color APP_BAR_BG = Colors.white;

  static Color BORDER_PRIMARY = PRIMARY;

  static Color APP_BG = HexColor("#E8E8E8");

  static Color LBL_TITLE = Colors.black;
  static Color LBL_SUB_TITLE = Colors.black87;
  static Color ARRO = Colors.blueAccent;
}

class ScreenSize {
  static double BTN_BOTTOM = 50;
  static double TEXT_FIELD = 50;
}

class FontSize {
  static double BTN_BOTTOM = 22;
  static double TEXT_FIELD = 16;
  static double LBL_TITLE = 20;
  static double LBL_SUB_TITLE = 17;
}

/*
    static let PRIMARY          = UIColor.init(hexColorString: "#FC7243")
    static let PRIMARY_0        = UIColor.init(hexColorString: "#F94522")
    static let PRIMARY_2        = UIColor.init(hexColorString: "#FF9934")
    static let PRIMARY_3        = UIColor.init(hexColorString: "#FFCC33")
*/
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class NAV_TITLE {
  static var ADD_DIRECTORY = 'Add Directory';
  static var ADD_SUBDIRECTORY = 'Add ';
  static var EDIT_DIRECTORY = 'Edit Directory';
  static var ADMIN_LOGIN = 'Admin Login';
  static var FEEDBACK = 'FeedBack';
  static var ADD_VIDEO = 'Add Video';
  static var EDIT_VIDEO = 'Edit Video';

  static var NEWS = 'News';
  static var ADD_NEWS = 'Add News';
  static var EDIT_NEWS = 'Edit News';
  static var NEWS_DETAIL = 'News Details';

  static var TOURIST = 'Tourist Place';
  static var ADD_TOURIST = 'Add Tourist Place';
  static var EDIT_TOURIST = 'Edit Tourist Place';
  static var TOURIST_DETAIL = 'Tourist Place Details';

  static var TERMS_AND_CONDITION = 'Terms & Condition';
  static var ABOUT_US = 'About Us';
  static var CONTACT_US = 'Contact Us';
}

class STR_COMMON {
  static var APP_NAME = '';
  static var SUBMIT = 'Submit';
  static var SAVE = 'Save';
  static var CANCEL = 'Cancel';
  static var TYPE = 'Type';
  static var PUBLIC = 'Public';
  static var PRIVATE = 'Private';
  static var NAME = 'Name';
  static var TITLE = 'Title';
  static var DETAILS = 'Detail';
  static var ADDRESS = 'Address';
  static var URL = 'URL';
  static var MOBILE = 'Mobile No';
  static var EMAIL_ID = 'Email Id';
}

class MoreTitle {
  static var ADMIN_LOGIN = 'Admin Login';
  static var NOTIFICATION = 'Notification';
  static var TERMS_CONDITION = 'Terms & Condition';
  static var ABOUT_US = 'About Us';
  static var CONTACT_US = 'Contact Us';
  static var FEEDBACK = 'Feedback';
  static var SETTINGS = 'Settings';
  static var HELP = 'Help';
  static var LOGOUT = 'Logout';
  static var SHARE = 'Share App';
  static var ACTIVITY = 'Activity';
}

class ErrorMsg {
  static var PLEASE_ENTER_NAME = 'Please enter name';
  static var PLEASE_ENTER_TITLE = 'Please enter title';
  static var PLEASE_ENTER_MOBILE = 'Please enter mobile';
  static var PLEASE_ENTER_EMAIL = 'Please enter email';
  static var PLEASE_ENTER_DETAIL = 'Please enter detail';
  static var PLEASE_ENTER_ADDRESS = 'Please enter address';
  static var PLEASE_ENTER_URL = 'Please enter URL';
}

class ImgName {
  static var PLACE_HOLDER = 'assets/placeholder.png';
}

class TABLE_NAME {
  static var VIDEOS = 'videos';
  static var DIRECTORIES = 'directories';
  static var SUB_DIRECTORIES = 'sub_directories';
  static var TOURIST = 'tourist';
  static var NEWS = 'news';
  static var CMS_PAGES = 'cms_pages';
  static var FEEDBACK = 'feedback';
}

class ALL_DATE_FORMAT {
  static var dateYYYY_MM_DD_HH_MM_SS = 'yyyy-MM-dd HH:mm:ss';
}

class CMS_PAGES_TYPE {
  static var TERMS_AND_CONDITION = 'terms_and_condition';
  static var ABOUT_US = 'about_us';
  static var CONTACT_US = 'contact_us';
}

var ImgPlaceholder =
    'https://firebasestorage.googleapis.com/v0/b/digital-botad.appspot.com/o/placeholder.png?alt=media&token=dda34731-1a6e-4e71-bace-c074dc44ffc9';

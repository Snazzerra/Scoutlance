import 'package:flutter/material.dart';
import 'package:scoutlance/style/my_theme.dart';

final ThemeData appTheme = ThemeData(
  primarySwatch: MyTheme.primary,
  brightness: Brightness.light,
  primaryColor: MyTheme.primaryColor,
  primaryColorLight: MyTheme.primary[100],
  primaryColorDark: MyTheme.primary[700],
  canvasColor: const Color(0xfffafafa),
  scaffoldBackgroundColor: const Color(0xfffafafa),
  cardColor: const Color(0xffffffff),
  dividerColor: const Color(0x1f000000),
  highlightColor: const Color(0x66bcbcbc),
  splashColor: const Color(0x66c8c8c8),
  unselectedWidgetColor: const Color(0x8a000000),
  disabledColor: const Color(0x61000000),
  secondaryHeaderColor: const Color(0xffede7f6),
  dialogBackgroundColor: const Color(0xffffffff),
  indicatorColor: MyTheme.secondaryColor,
  hintColor: const Color(0x8a000000),
  buttonTheme: ButtonThemeData(
    textTheme: ButtonTextTheme.primary,
    minWidth: 88,
    // height: 36,
    height: 42,
    padding: const EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
    shape: const RoundedRectangleBorder(
      side: BorderSide(
        color: Color(0xff000000),
        width: 0,
        style: BorderStyle.none,
      ),
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
    alignedDropdown: false,
    buttonColor: MyTheme.primaryColor,
    disabledColor: const Color(0x61000000),
    highlightColor: const Color(0x00000000),
    splashColor: const Color(0x1fffffff),
    focusColor: const Color(0x1f000000),
    hoverColor: const Color(0x0a000000),
    colorScheme: ColorScheme(
      primary: MyTheme.primaryColor,
      secondary: MyTheme.secondaryColor,
      surface: const Color(0xffffffff),
      background: MyTheme.primary[200]!,
      error: const Color(0xffd32f2f),
      onPrimary: const Color(0xffffffff),
      onSecondary: const Color(0xffffffff),
      onSurface: const Color(0xff000000),
      onBackground: const Color(0xffffffff),
      onError: const Color(0xffffffff),
      brightness: Brightness.light,
    ),
  ),
  appBarTheme: AppBarTheme(
    iconTheme: const IconThemeData(
      color: Color(0xb3ffffff),
      opacity: 1,
      size: 24,
    ),
    titleTextStyle:
        MyTheme.getMaterialTextTheme(const Color(0xb3ffffff)).titleLarge,
  ),
  textTheme: MyTheme.getMaterialTextTheme(const Color(0x8C000000)),
  primaryTextTheme: MyTheme.getMaterialTextTheme(const Color(0xFF000000)),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: const TextStyle(
      color: MyTheme.primary,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    helperStyle: const TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    hintStyle: TextStyle(
      color: MyTheme.primary.shade100,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    errorStyle: const TextStyle(
      color: MyTheme.errorColor,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    errorMaxLines: null,
    // hasFloatingPlaceholder: true,
    isDense: false,
    contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
    isCollapsed: false,
    prefixStyle: const TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    suffixStyle: const TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    counterStyle: const TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    filled: false,
    fillColor: Colors.black,
    errorBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    focusedErrorBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    disabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black12,
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    ),
    focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        borderSide: BorderSide(color: Colors.black54)),
    enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        borderSide: BorderSide(color: Colors.black26)),
    border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        borderSide: BorderSide(color: Colors.black45)),
  ),
  iconTheme: const IconThemeData(
    color: MyTheme.primaryColor,
    opacity: 1,
    size: 24,
  ),
  primaryIconTheme: const IconThemeData(
    color: Color(0xffffffff),
    opacity: 1,
    size: 24,
  ),
  tabBarTheme: TabBarTheme(
    indicatorSize: TabBarIndicatorSize.tab,
    labelColor: const Color(0xffffffff),
    unselectedLabelColor: MyTheme.primary.shade200,
    indicator: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: Colors.black,
    ),
  ),
  chipTheme: const ChipThemeData(
    backgroundColor: Color(0xffffffff),
    brightness: Brightness.dark,
    deleteIconColor: Color(0xde000000),
    disabledColor: Colors.white,
    labelPadding: EdgeInsets.only(top: 0, bottom: 0, left: 8, right: 8),
    labelStyle: TextStyle(
      color: Colors.black,
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    padding: EdgeInsets.only(top: 4, bottom: 4, left: 4, right: 4),
    secondaryLabelStyle: TextStyle(
      color: Colors.white,
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    secondarySelectedColor: MyTheme.primary,
    selectedColor: MyTheme.primary,
    shape: StadiumBorder(
        side: BorderSide(
      color: Color(0xff000000),
      width: 0,
      style: BorderStyle.none,
    )),
  ),
  dialogTheme: const DialogTheme(
      shape: RoundedRectangleBorder(
    side: BorderSide(
      color: Color(0xff000000),
      width: 0,
      style: BorderStyle.none,
    ),
    borderRadius: BorderRadius.all(Radius.circular(4.0)),
  )),
);

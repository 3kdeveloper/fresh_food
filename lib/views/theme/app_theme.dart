import '../../utils/exports.dart';

class AppTheme {
  // Colors
  static const kPrimaryColor = Color(0xFFDC9310);
  static const kAccentColor = Color(0xFFEFBC88);
  static const kWhiteColor = Color(0xFFFFFFFF);
  static const kBlackColor = Color(0xFF000000);
  static const kTextFieldColor = Color(0xFFE7E7EC);

  static ThemeData themeData = ThemeData(
    primaryColor: kPrimaryColor,
    // ignore: deprecated_member_use
    accentColor: kAccentColor,
    scaffoldBackgroundColor: kWhiteColor,
    // fontFamily: '',
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
      primary: kPrimaryColor,
    )),
  );
}

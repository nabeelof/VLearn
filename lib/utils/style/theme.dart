import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_text_style.dart';

class AppColors {
  static const primaryColor = Color(0xFFF96262);
  static const paymentBorder = Color(0xFFE9E9EC);
  static const red = Color(0xFFEA503D);
  static const lightRed = Color(0xFFEB5757);
  static const iconsColor = Color(0xFFF6F6F6);
  static const Color secondaryColor = Color(0xffE5E5E5);
  static const Color courseDiscountBorder = Color(0xFFFFD6D6);
  static const Color lightBlueColor = Color(0x1927a4d9);
  static const Color goldColor = Color(0xFFF4BB1B);
  static const Color goldBadge = Color(0xFFFFAA00);
  static const Color silverBadge = Color(0xFF818E98);
  static const Color blueColor = Color(0xff27a4d9);
  static const Color greenColor = Color(0xFF009E19);
  static const Color quizLineColor = Color(0xFFFEB546);
  static const Color bronzeBadge = Color(0XFF924B2A);
  static const Color greenCircle = Color(0xFF42C63F);
  static const Color tabBarColor = Color(0xFFFFFBFE);
  static const Color brown = Color(0xFF7E7872);
  static const Color offWhiteColor = Color(0xFFDDF6FF);
  static const Color offWhiteColor2 = Color(0xFFF4F4F4);
  static const Color answerBlueColor = Color(0xFF28AFDF);
  static const Color mi = Color(0xFF272727);
  static const Color greyColor = Color(0xff333534);
  static const Color darkGrey = Color(0xFF828282);
  static const Color forgetPinGrey = Color(0xFF939393);
  static const Color lightGreyColor = Color(0xFFA2A2A2);
  static const Color lightPrimaryColor = Color(0xffffe8e8);
  static const Color borderDividerColor = Color(0xffE9E9EC);
  static const Color lightGray = Color(0xFF1F1F1F);
  static const Color redResult = Color(0xFFFF4B4C);
  static const Color logoutColor = Color(0xFFF0304E);
  static const Color orange = Color(0xFFF0304E);
  static const Color errorColor = Color(0xFFE31D40);
  static const Color greenResult = Color(0xFF30BB4E);
  static const Color emptyGrey = Color(0xFFF3F6FD);
  static const Color correctColor = Color(0xFF00C844);
  static const Color disableButtonColor = Color(0xFFFFBABA);
  static Color shimmerHighlightColor = Colors.white;
  static Color shimmerBaseColor = Colors.grey[200]!;
  static const Color textGreyColor = Color(0xffA4A4A4);
  static const Color timerGreyColor = Color(0xffCFCFCF);
  static const Color downButtonGreyColor = Color(0xff6F6F6F);
  static const Color followGreyColor = Color(0x7fd9d9d9);
  static const Color blueContainer = Color(0xFF00c1ff);
  static const Color redBoldLinear = Color(0xFFea4e3b);
  static const Color redLightLinear = Color(0xFFf1988c);
  static const Color level1Color = Color(0xFF2698D2);
  static const Color level3Color = Color(0xFF817F7F);
  static const Color bottomNavBarGrey = Color(0x80817F7F);

  static const primarySwatch = MaterialColor(0xFFF96262, {
    50: Color(0xFFF96262),
    100: Color(0xFFF96262),
    200: Color(0xFFF96262),
    300: Color(0xFFF96262),
    400: Color(0xFFF96262),
    500: Color(0xFFF96262),
    600: Color(0xFFF96262),
    700: Color(0xFFF96262),
    800: Color(0xFFF96262),
    900: Color(0xFFF96262),
  });

  static final lightTheme = ThemeData(
    tabBarTheme: TabBarTheme(
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorColor: AppColors.primaryColor,
      labelColor: AppColors.primaryColor,
      dividerColor: Colors.transparent,
      unselectedLabelColor: AppColors.greyColor,
      unselectedLabelStyle: AppTextStyle.mediumGrey400,
      labelStyle: AppTextStyle.mediumPrimary500,
    ),
    radioTheme: RadioThemeData(
      overlayColor: MaterialStateProperty.all<Color?>(AppColors.primaryColor),
      fillColor: MaterialStateProperty.all<Color?>(AppColors.primaryColor),
    ),
    checkboxTheme: CheckboxThemeData(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      side: const BorderSide(color: AppColors.greyColor),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    ),
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
    splashColor: Colors.transparent,
    fontFamily: 'Urbanist',
    primaryColor: primaryColor,
    iconTheme: const IconThemeData(color: primaryColor),
    primarySwatch: primarySwatch,
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Color(0xFF0F1115),
        modalBarrierColor: Color(0xFF2D2D2D)),
    unselectedWidgetColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        splashFactory: NoSplash.splashFactory,
        overlayColor: MaterialStateProperty.all<Color?>(Colors.transparent),
      ),
    ),
    dividerColor: const Color(0xFFE9E9EB),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: primaryColor,
      shadowColor: Colors.transparent,
      titleTextStyle: TextStyle(
        color: AppColors.lightGray,
        fontWeight: FontWeight.w700,
        fontFamily: 'Cairo',
        fontSize: AppTextStyle.xMediumFontSize,
      ),
      centerTitle: true,
      elevation: 0,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.black,
        systemNavigationBarIconBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light, // For iOS (dark icons)
      ),
      surfaceTintColor: Colors.transparent,
    ),
  );
}

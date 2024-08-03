// ignore_for_file: ant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vlearn_test/utils/extension.dart';
import 'package:vlearn_test/utils/style/theme.dart';

class AppTextStyle {
  static double miniFontSize = 2.4.w(); // 10.0;

  static double smallFontSize = 2.6.w(); // 11.0;
  static double xSmallFontSize = 2.8.w(); // 12.0;

  static double regularFontSize = 3.1.w(); // 13.0;
  static double xRegularFontSize = 3.3.w(); // 14.0;

  static double mediumFontSize = 3.8.w(); // 16.0;
  static double xMediumFontSize = 4.3.w(); // 18.0;

  static double largeFontSize = 4.8.w(); // 20.0;
  static double mLargeFontSize = 5.3.w(); // 22.0;
  static double xLargeFontSize = 5.7.w(); // 24.0;
  static double xmLargeFontSize = 6.7.w(); // 28.0;
  static double xxLargeFontSize = 7.2.w(); // 30.0;
  static double xxxLargeFontSize = 8.2.w(); // 34.0;

  static get xMediumWhiteBold => TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: xMediumFontSize);

  static get largeWhiteBold => TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: largeFontSize);

  static get largeWhite600 => TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: largeFontSize);

  static get xLargeWhiteBold => TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: xLargeFontSize);

  static get xLargeGrey500 => TextStyle(
      color: AppColors.lightGray,
      fontWeight: FontWeight.w500,
      fontSize: xLargeFontSize);

  static get mLargeGrey500 => TextStyle(
      color: AppColors.lightGray,
      fontWeight: FontWeight.w500,
      fontSize: mLargeFontSize);

  static get xRegularForgetPinGrey400 => TextStyle(
      color: AppColors.forgetPinGrey,
      fontWeight: FontWeight.w400,
      fontSize: xRegularFontSize);

  static get smallDarkGrey400 => TextStyle(
      color: AppColors.darkGrey,
      fontWeight: FontWeight.w400,
      fontSize: smallFontSize);

  static get xRegularGray400 => TextStyle(
      color: AppColors.lightGray,
      fontWeight: FontWeight.w400,
      fontSize: xRegularFontSize);

  static get xRegularGray600 => TextStyle(
      color: AppColors.lightGray,
      fontWeight: FontWeight.w600,
      fontSize: xRegularFontSize);

  static get xRegularNavGray400 => TextStyle(
      color: AppColors.bottomNavBarGrey,
      fontWeight: FontWeight.w400,
      fontSize: xRegularFontSize);

  static get xRegularForgetPinGrey700 => TextStyle(
      color: AppColors.forgetPinGrey,
      fontWeight: FontWeight.w700,
      fontSize: xRegularFontSize);

  static get regularWhite700 => TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: regularFontSize);

  static get xmLargePrimary600 => TextStyle(
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w600,
      fontSize: xmLargeFontSize);

  static get largePrimary600 => TextStyle(
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w600,
      fontSize: largeFontSize);

  static get xxxLargeGrey700 => TextStyle(
      color: AppColors.lightGray,
      fontWeight: FontWeight.w700,
      fontSize: xxxLargeFontSize);

  static get xxLargeGrey700 => TextStyle(
      color: AppColors.lightGray,
      fontWeight: FontWeight.w700,
      fontSize: xxLargeFontSize);

  static get xLargeGrey700 => TextStyle(
      color: AppColors.lightGray,
      fontWeight: FontWeight.w700,
      fontSize: xLargeFontSize);

  static get largeGreen700 => TextStyle(
      color: AppColors.greenResult,
      fontWeight: FontWeight.w700,
      fontSize: largeFontSize);

  static get largeGold700 => TextStyle(
      color: AppColors.goldBadge,
      fontWeight: FontWeight.w700,
      fontSize: largeFontSize);

  static get largeRed700 => TextStyle(
      color: AppColors.redResult,
      fontWeight: FontWeight.w700,
      fontSize: largeFontSize);

  static get mLargePrimary700 => TextStyle(
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w700,
      fontSize: mLargeFontSize);

  static get mLargePrimary => TextStyle(
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w500,
      fontSize: mLargeFontSize);

  static get xmLargeGrey600 => TextStyle(
      color: AppColors.lightGray,
      fontWeight: FontWeight.w600,
      fontSize: xmLargeFontSize);

  static get xMediumGoldBold => TextStyle(
      color: AppColors.goldColor,
      fontWeight: FontWeight.w700,
      fontSize: xMediumFontSize);

  static get xRegularGold400 => TextStyle(
      color: AppColors.goldColor,
      fontWeight: FontWeight.w400,
      fontSize: xRegularFontSize);

  static get mediumGold400 => TextStyle(
      color: AppColors.goldColor,
      fontWeight: FontWeight.w400,
      fontSize: mediumFontSize);

  static get xMediumGold600 => TextStyle(
      color: AppColors.goldColor,
      fontWeight: FontWeight.w600,
      fontSize: xMediumFontSize);

  static TextStyle get xMediumWhitePrimary => TextStyle(
      color: Get.theme.primaryColor,
      fontWeight: FontWeight.w700,
      fontSize: xMediumFontSize);

  static get largeGreyBold => TextStyle(
      color: AppColors.lightGray,
      fontWeight: FontWeight.w700,
      fontSize: largeFontSize);

  static get largeBlueBold => TextStyle(
      color: AppColors.blueColor,
      fontWeight: FontWeight.w700,
      fontSize: largeFontSize);

  static get xRegularGreen400 => TextStyle(
      color: AppColors.greenColor,
      fontWeight: FontWeight.w400,
      fontSize: xRegularFontSize);

  static get xRegularBlue400 => TextStyle(
      color: AppColors.blueColor,
      fontWeight: FontWeight.w400,
      fontSize: xRegularFontSize);

  static get xRegularPrimary600 => TextStyle(
      color: Get.theme.primaryColor,
      fontWeight: FontWeight.w600,
      fontSize: xRegularFontSize);

  static get xRegularPrimary400 => TextStyle(
      color: Get.theme.primaryColor,
      fontWeight: FontWeight.w400,
      fontSize: xRegularFontSize);

  static get xRegularPrimary500 => TextStyle(
      color: Get.theme.primaryColor,
      fontWeight: FontWeight.w500,
      fontSize: xRegularFontSize);

  static get largePrimaryBold => TextStyle(
      color: Get.theme.primaryColor,
      fontWeight: FontWeight.w700,
      fontSize: largeFontSize);


  static get mLargePrimaryBold => TextStyle(
      color: Get.theme.primaryColor,
      fontWeight: FontWeight.w700,
      fontSize: mLargeFontSize);

  static get largeGrey400 => TextStyle(
      color: AppColors.lightGray,
      fontWeight: FontWeight.w400,
      fontSize: largeFontSize);

  static get xLargeGreyBold => TextStyle(
      color: AppColors.lightGray,
      fontWeight: FontWeight.w700,
      fontSize: xLargeFontSize);

  static get largeGrey500 => TextStyle(
      color: AppColors.lightGray,
      fontWeight: FontWeight.w500,
      fontSize: largeFontSize);

  static get xLargeOrangeBold => TextStyle(
      color: AppColors.orange,
      fontWeight: FontWeight.w700,
      fontSize: xLargeFontSize);

  static get xSmallGold700 => TextStyle(
      color: AppColors.goldColor,
      fontWeight: FontWeight.w700,
      fontSize: xSmallFontSize);

  static get xSmallError700 => TextStyle(
      color: AppColors.errorColor,
      fontWeight: FontWeight.w700,
      fontSize: xSmallFontSize);

  static get xSmallGreenBold => TextStyle(
      color: AppColors.greenColor,
      fontWeight: FontWeight.w700,
      fontSize: xSmallFontSize);

  static get xSmallTransparent700 => TextStyle(
      color: Colors.transparent,
      fontWeight: FontWeight.w700,
      fontSize: xSmallFontSize);

  static get xMediumGreen700 => TextStyle(
      color: AppColors.greenResult,
      fontWeight: FontWeight.w700,
      fontSize: xMediumFontSize);

  static get xMediumRed700 => TextStyle(
      color: AppColors.redResult,
      fontWeight: FontWeight.w700,
      fontSize: xMediumFontSize);

  static get xSmallRed400 => TextStyle(
      color: Colors.red, fontWeight: FontWeight.w400, fontSize: xSmallFontSize);

  static get xSmallGrey400 => TextStyle(
      color: AppColors.textGreyColor,
      fontWeight: FontWeight.w400,
      fontSize: xSmallFontSize);

  static get xSmallBrown400 => TextStyle(
      color: AppColors.brown,
      fontWeight: FontWeight.w400,
      fontSize: xSmallFontSize);

  static get xSmallGrey700 => TextStyle(
      color: AppColors.textGreyColor,
      fontWeight: FontWeight.w700,
      fontSize: xSmallFontSize);

  static get xSmallForgetPinGrey400 => TextStyle(
      color: AppColors.forgetPinGrey,
      fontWeight: FontWeight.w400,
      fontSize: xSmallFontSize);

  static get regularWhitekBold => TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: regularFontSize);

  static get xMediumGrey => TextStyle(
      color: AppColors.lightGray,
      fontWeight: FontWeight.w500,
      fontSize: xMediumFontSize);

  static get xMediumGrey600 => TextStyle(
      color: AppColors.lightGray,
      fontWeight: FontWeight.w600,
      fontSize: xMediumFontSize);

  static get xMediumForgetPinGrey400 => TextStyle(
      color: AppColors.forgetPinGrey,
      fontWeight: FontWeight.w400,
      fontSize: xMediumFontSize);

  static get mediumGoldBadge700 => TextStyle(
      color: AppColors.goldBadge,
      fontWeight: FontWeight.w700,
      fontSize: mediumFontSize);

  static get mediumSilverBadge700 => TextStyle(
      color: AppColors.silverBadge,
      fontWeight: FontWeight.w700,
      fontSize: mediumFontSize);

  static get mediumBronzeBadge700 => TextStyle(
      color: AppColors.bronzeBadge,
      fontWeight: FontWeight.w700,
      fontSize: mediumFontSize);

  static get xMediumPrimaryBold => TextStyle(
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w700,
      fontSize: xMediumFontSize);

  static get xMediumWhite400 => TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontSize: xMediumFontSize);

  static TextStyle get xMediumWhite600 => TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: xMediumFontSize);

  static get mediumWhite400 => TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontSize: mediumFontSize);

  static get mediumGrey400 => TextStyle(
      color: AppColors.lightGray,
      fontWeight: FontWeight.w400,
      fontSize: mediumFontSize);

  static get mediumDarkGrey400WithLine => TextStyle(
      color: AppColors.lightGreyColor,
      fontWeight: FontWeight.w400,
      fontSize: mediumFontSize,
      decoration: TextDecoration.lineThrough);

  static get mediumBlue400 => TextStyle(
      color: AppColors.blueColor,
      fontWeight: FontWeight.w400,
      fontSize: mediumFontSize);

  static get mediumBlue600 => TextStyle(
      color: AppColors.blueColor,
      fontWeight: FontWeight.w600,
      fontSize: mediumFontSize);

  static get xLargeBlue700 => TextStyle(
      color: AppColors.blueColor,
      fontWeight: FontWeight.w700,
      fontSize: xLargeFontSize);

  static get xMLargeGreen700 => TextStyle(
      color: AppColors.greenResult,
      fontWeight: FontWeight.w700,
      fontSize: xmLargeFontSize);

  static get xMLargeBlue700 => TextStyle(
      color: AppColors.blueColor,
      fontWeight: FontWeight.w700,
      fontSize: xmLargeFontSize);

  static get xMLargeRed700 => TextStyle(
      color: AppColors.redResult,
      fontWeight: FontWeight.w700,
      fontSize: xmLargeFontSize);

  static TextStyle get mediumGreyBold => TextStyle(
      color: AppColors.lightGray,
      fontWeight: FontWeight.w700,
      fontSize: mediumFontSize);

  static get mediumLightGreyBold => TextStyle(
      color: AppColors.followGreyColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.lineThrough,
      decorationColor: AppColors.followGreyColor,
      fontSize: mediumFontSize);

  static get mediumGreenBold => TextStyle(
      color: AppColors.greenCircle,
      fontWeight: FontWeight.w700,
      fontSize: mediumFontSize);

  static get mediumGoldBold => TextStyle(
      color: AppColors.goldColor,
      fontWeight: FontWeight.w700,
      fontSize: mediumFontSize);

  static get mediumGrey => TextStyle(
      color: AppColors.lightGray,
      fontWeight: FontWeight.w500,
      fontSize: mediumFontSize);

  static get mediumGreen => TextStyle(
      color: AppColors.greenCircle,
      fontWeight: FontWeight.w500,
      fontSize: mediumFontSize);

  static get mediumGold => TextStyle(
      color: AppColors.goldColor,
      fontWeight: FontWeight.w500,
      fontSize: mediumFontSize);

  static get mediumGoldUnderline600 => TextStyle(
      color: Colors.transparent,
      fontWeight: FontWeight.w600,
      fontSize: mediumFontSize,
      decoration: TextDecoration.underline,
      decorationColor: AppColors.goldColor,
      decorationThickness: 3,
      shadows: const [
        Shadow(
            color: AppColors.goldColor,
            offset: Offset(0, -2))
      ],
  );

  static get mediumWhiteBold => TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: mediumFontSize);

  static get mediumGrey600 => TextStyle(
      color: AppColors.lightGray,
      fontWeight: FontWeight.w600,
      fontSize: mediumFontSize);

  static get mediumPrimary600 => TextStyle(
      color: Get.theme.primaryColor,
      fontWeight: FontWeight.w600,
      fontSize: mediumFontSize);

  static get mediumPrimary400 => TextStyle(
      color: Get.theme.primaryColor,
      fontWeight: FontWeight.w400,
      fontSize: mediumFontSize);

  static get xSmallPrimary600 => TextStyle(
      color: Get.theme.primaryColor,
      fontWeight: FontWeight.w600,
      fontSize: xSmallFontSize);

  static get mediumPrimary500 => TextStyle(
      color: Get.theme.primaryColor,
      fontWeight: FontWeight.w500,
      fontSize: mediumFontSize);

  static get mediumPrimaryBold => TextStyle(
      color: Get.theme.primaryColor,
      fontWeight: FontWeight.w700,
      fontSize: mediumFontSize);

  static get largeGrey600 => TextStyle(
      color: AppColors.lightGray,
      fontWeight: FontWeight.w600,
      fontSize: largeFontSize);

  static get mediumRedBold => TextStyle(
      color: AppColors.lightRed,
      fontWeight: FontWeight.w700,
      fontSize: mediumFontSize);

  static TextStyle get xMediumGrey400 => TextStyle(
      color: AppColors.lightGray,
      fontWeight: FontWeight.w400,
      fontSize: xMediumFontSize);

  static get xxLargePrimaryBold => TextStyle(
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w700,
      fontSize: xxLargeFontSize);

  static get xxLargeGreyBold => TextStyle(
      color: AppColors.lightGray,
      fontWeight: FontWeight.w700,
      fontSize: xxLargeFontSize);

  static get xLargePrimaryBold => TextStyle(
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w700,
      fontSize: xLargeFontSize);

  static get xMediumGreyBold => TextStyle(
      color: AppColors.lightGray,
      fontWeight: FontWeight.w700,
      fontSize: xMediumFontSize);

  static get xRegularGrey400 => TextStyle(
      color: AppColors.lightGray,
      fontWeight: FontWeight.w400,
      fontSize: xRegularFontSize);

  static get regularGreyWithLine300 => TextStyle(
      color: AppColors.lightGray,
      fontWeight: FontWeight.w300,
      decoration: TextDecoration.lineThrough,
      fontSize: regularFontSize);

  static get xRegularLightGrey400 => TextStyle(
      color: Colors.grey.shade400,
      fontWeight: FontWeight.w400,
      fontSize: xRegularFontSize);

  static get xRegularGrey500 => TextStyle(
      color: AppColors.lightGray,
      fontWeight: FontWeight.w500,
      fontSize: xRegularFontSize);

  static get xRegularWhite700 => TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: xRegularFontSize);

  static get regularWhite600 => TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: regularFontSize);

  static get xRegularLightGray400 => TextStyle(
      color: AppColors.lightGray.withOpacity(0.5),
      fontWeight: FontWeight.w400,
      fontSize: xRegularFontSize);

  static get xMediumGreen400 => TextStyle(
      color: AppColors.greenColor,
      fontWeight: FontWeight.w400,
      fontSize: xMediumFontSize);

  static get xMediumGreen600 => TextStyle(
      color: AppColors.greenColor,
      fontWeight: FontWeight.w600,
      fontSize: xMediumFontSize);

  static get xRegularLightGray700 => TextStyle(
      color: AppColors.lightGray,
      fontWeight: FontWeight.w700,
      fontSize: xRegularFontSize);

  static get xRegularWhite400 => TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontSize: xRegularFontSize);

  static get xRegularWhite600 => TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: xRegularFontSize);

  static get mLargeWhite500 => TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontSize: mLargeFontSize);

  static get mLargeGreyBold => TextStyle(
      color: AppColors.lightGray,
      fontWeight: FontWeight.w700,
      fontSize: mLargeFontSize);

  static get mLargeRedBold => TextStyle(
      color: AppColors.red,
      fontWeight: FontWeight.w700,
      fontSize: mLargeFontSize);

  static get xMediumRedBold700 => TextStyle(
      color: AppColors.red,
      fontWeight: FontWeight.w700,
      fontSize: xMediumFontSize);

  static get xMediumBlue600 => TextStyle(
      color: AppColors.blueColor,
      fontWeight: FontWeight.w600,
      fontSize: xMediumFontSize);

  static get xMediumBlue700 => TextStyle(
      color: AppColors.blueColor,
      fontWeight: FontWeight.w700,
      fontSize: xMediumFontSize);

  static get xMediumBlue800 => TextStyle(
      color: AppColors.answerBlueColor,
      fontWeight: FontWeight.w800,
      fontSize: xMediumFontSize);

  static get xMediumBlack400 => TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w400,
      fontSize: xMediumFontSize);

  static get xMediumBlack600 => TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontSize: xMediumFontSize);

  static get xMediumgGold600 => TextStyle(
      color: AppColors.goldColor,
      fontWeight: FontWeight.w600,
      fontSize: xMediumFontSize);

  static get xRegularGold600 => TextStyle(
      color: AppColors.goldColor,
      fontWeight: FontWeight.w600,
      fontSize: xRegularFontSize);

  static get xxLargeRedBold700 => TextStyle(
      color: Get.theme.primaryColor,
      fontWeight: FontWeight.w700,
      fontSize: xxLargeFontSize);

  static TextStyle get xRegularlightGreyBold700 => TextStyle(
      color: AppColors.forgetPinGrey,
      fontWeight: FontWeight.w400,
      fontSize: xRegularFontSize);

  static get xRegularRedBold700 => TextStyle(
      color: Get.theme.primaryColor,
      fontWeight: FontWeight.w700,
      fontSize: xRegularFontSize);

  static get xRegularBlueBold700 => TextStyle(
      color: AppColors.blueColor,
      fontWeight: FontWeight.w700,
      fontSize: xRegularFontSize);

  static get xSmallBlueBold700 => TextStyle(
      color: AppColors.blueColor,
      fontWeight: FontWeight.w700,
      fontSize: xSmallFontSize);

  static get xMediumlightGreyBold700 => TextStyle(
      color: const Color(0xff363636),
      fontSize: xMediumFontSize,
      fontWeight: FontWeight.w700);

  static get mLargeGoldBadge700 => TextStyle(
      color: AppColors.goldBadge,
      fontSize: mLargeFontSize,
      fontWeight: FontWeight.w700);

  static get mediumLevelOneUnderline600 => TextStyle(
      color: Colors.transparent,
      fontWeight: FontWeight.w600,
      fontSize: mediumFontSize,
      decoration: TextDecoration.underline,
      decorationColor: AppColors.level1Color,
      decorationThickness: 3,
      shadows: const [
        Shadow(
            color: AppColors.level1Color,
            offset: Offset(0, -2))
      ],
  );

  static get mediumLevelOne400 => TextStyle(
    color: AppColors.level1Color,
    fontWeight: FontWeight.w400,
    fontSize: mediumFontSize,
  );

  static get mediumLevelThree600 => TextStyle(
    color: AppColors.level3Color,
    fontWeight: FontWeight.w600,
    fontSize: mediumFontSize,
  );


  static get mediumLevelThree400 => TextStyle(
    color: AppColors.level3Color,
    fontWeight: FontWeight.w400,
    fontSize: mediumFontSize,
  );

  static get mediumLightGrey400W => TextStyle(
      color: AppColors.lightGreyColor,
      fontWeight: FontWeight.w400,
      fontSize: mediumFontSize,);

  static get regularLevelThree600 => TextStyle(
    color: AppColors.level3Color,
    fontWeight: FontWeight.w600,
    fontSize: regularFontSize,
  );

  static get xRegularLevelThree600 => TextStyle(
    color: AppColors.level3Color,
    fontWeight: FontWeight.w600,
    fontSize: xRegularFontSize,
  );

  static get xSmallLevelThree400 => TextStyle(
    color: AppColors.level3Color,
    fontWeight: FontWeight.w400,
    fontSize: xSmallFontSize,
  );

}

import 'package:bilions_ui/bilions_ui.dart';
import 'package:flutter/material.dart';

class BilionsColors {
  static get background => BilionsUI().background;
  static get black => BilionsUI().black;
  static get danger => BilionsUI().danger;
  static get dangerLight => BilionsUI().dangerLight;
  static get dark => BilionsUI().dark;
  static get fullDark => BilionsUI().fullDark;
  static get grey => BilionsUI().grey;
  static get info => BilionsUI().info;
  static get infoLight => BilionsUI().infoLight;
  static get lightGrey => BilionsUI().lightGrey;
  static get modalBackground => BilionsUI().modalBackground;

  static get primary => BilionsUI().primary;
  static get primaryLight => BilionsUI().primaryLight;
  static get primaryTextColor => BilionsUI().primaryTextColor;

  static get secondary => BilionsUI().secondary;
  static get secondaryTextColor => BilionsUI().secondaryTextColor;

  static get success => BilionsUI().success;
  static get successLight => BilionsUI().successLight;

  static get warning => BilionsUI().warning;
  static get warningLight => BilionsUI().warningLight;

  static get white => BilionsUI().white;
}

class ColorConfig {
  Color? danger;
  Color? dangerLight;
  Color? info;
  Color? infoLight;
  Color? primary;
  Color? primaryTextColor;
  Color? secondaryTextColor;
  Color? primaryLight;
  Color? success;
  Color? successLight;
  Color? warning;
  Color? warningLight;
  Color? background;
  Color? modalBackground;
  Color? white;
  Color? black;
  Color? dark;
  Color? fullDark;
  Color? grey;
  Color? secondary;
  Color? lightGrey;

  ColorConfig({
    this.danger,
    this.dangerLight,
    this.info,
    this.infoLight,
    this.primary,
    this.primaryTextColor,
    this.primaryLight,
    this.success,
    this.successLight,
    this.warning,
    this.warningLight,
    this.background,
    this.modalBackground,
    this.white,
    this.black,
    this.dark,
    this.fullDark,
    this.grey,
    this.secondary,
    this.secondaryTextColor,
    this.lightGrey,
  });
}

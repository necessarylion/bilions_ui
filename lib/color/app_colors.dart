import 'package:bilions_ui/bilions_ui.dart';
import 'package:flutter/material.dart';

class BilionsColors {
  static get background => HexColor('#F3F7FE');
  static get black => HexColor('#000000');
  static get danger => BilionsUI().danger;
  static get dangerLight => BilionsUI().dangerLight;
  static get dark => HexColor('#121824');
  static get fullDark => HexColor('#0F131D');
  static get grey => HexColor('#76849D');
  static get info => BilionsUI().info;
  static get infoLight => BilionsUI().infoLight;
  static get lightGrey => HexColor('F4F4F4');
  static get primary => BilionsUI().primary;
  static get primaryLight => BilionsUI().primaryLight;
  static get secondary => HexColor('#76849D');
  static get success => BilionsUI().success;
  static get successLight => BilionsUI().successLight;
  static get warning => BilionsUI().warning;
  static get warningLight => BilionsUI().warningLight;
  static get white => HexColor('#FFFFFF');
}

class ColorConfig {
  Color? danger;
  Color? dangerLight;
  Color? info;
  Color? infoLight;
  Color? primary;
  Color? primaryLight;
  Color? success;
  Color? successLight;
  Color? warning;
  Color? warningLight;

  ColorConfig({
    this.danger,
    this.dangerLight,
    this.info,
    this.infoLight,
    this.primary,
    this.primaryLight,
    this.success,
    this.successLight,
    this.warning,
    this.warningLight,
  });
}

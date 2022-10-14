part of bilions_ui;

class BilionsUI {
  static final BilionsUI _bilionsUI = BilionsUI._internal();

  ColorConfig? colorConfig;

  factory BilionsUI() {
    return _bilionsUI;
  }

  BilionsUI._internal();

  Color get background => colorConfig?.background ?? HexColor('#f4f4f4');
  Color get black => colorConfig?.black ?? HexColor('#000000');
  Color get danger => colorConfig?.danger ?? HexColor('#DC3545');
  Color get dangerLight => colorConfig?.dangerLight ?? HexColor('#F8D7DA');
  Color get dark => colorConfig?.dark ?? HexColor('#121824');
  Color get fullDark => colorConfig?.fullDark ?? HexColor('#0F131D');
  Color get grey => colorConfig?.grey ?? HexColor('#76849D');
  Color get info => colorConfig?.info ?? HexColor('#0c5460');
  Color get infoLight => colorConfig?.infoLight ?? HexColor('#d1ecf1');
  Color get lightGrey => colorConfig?.lightGrey ?? HexColor('F4F4F4');
  Color get modalBackground =>
      colorConfig?.modalBackground ?? HexColor('#FFFFFF');

  Color get primary => colorConfig?.primary ?? HexColor('#3E519D');
  Color get primaryLight => colorConfig?.primaryLight ?? HexColor('#EBF2FE');
  Color get primaryTextColor =>
      colorConfig?.primaryTextColor ?? HexColor('#FFFFFF');
  Color get secondary => colorConfig?.secondary ?? HexColor('#76849D');
  Color get secondaryTextColor =>
      colorConfig?.secondaryTextColor ?? HexColor('#76849D');
  Color get success => colorConfig?.success ?? HexColor('#198754');
  Color get successLight => colorConfig?.successLight ?? HexColor('#d4edda');
  Color get warning => colorConfig?.warning ?? HexColor('#FFC107');
  Color get warningLight => colorConfig?.warningLight ?? HexColor('##fff3cd');
  Color get white => colorConfig?.white ?? HexColor('#FFFFFF');

  setColors(ColorConfig config) {
    colorConfig = config;
  }
}

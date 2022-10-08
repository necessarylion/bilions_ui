part of bilions_ui;

class BilionsUI {
  static final BilionsUI _bilionsUI = BilionsUI._internal();

  ColorConfig? colorConfig;

  factory BilionsUI() {
    return _bilionsUI;
  }

  BilionsUI._internal();

  Color get danger => colorConfig?.danger ?? HexColor('#DC3545');
  Color get dangerLight => colorConfig?.dangerLight ?? HexColor('#F8D7DA');
  Color get info => colorConfig?.info ?? HexColor('#0c5460');
  Color get infoLight => colorConfig?.infoLight ?? HexColor('#d1ecf1');
  Color get primary => colorConfig?.primary ?? HexColor('#3E519D');
  Color get primaryLight => colorConfig?.primaryLight ?? HexColor('#F3F7FE');
  Color get success => colorConfig?.success ?? HexColor('#198754');
  Color get successLight => colorConfig?.successLight ?? HexColor('#d4edda');
  Color get warning => colorConfig?.warning ?? HexColor('#FFC107');
  Color get warningLight => colorConfig?.warningLight ?? HexColor('##fff3cd');

  setColors(ColorConfig config) {
    colorConfig = config;
  }
}

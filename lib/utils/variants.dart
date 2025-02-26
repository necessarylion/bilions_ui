part of bilions_ui;

enum BVariant {
  danger('danger'),
  info('info'),
  primary('primary'),
  success('success'),
  warning('warning');

  final String value;
  const BVariant(this.value);
}

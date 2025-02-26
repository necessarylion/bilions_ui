# Alert

![Alert Dialog](../assets/alert.png){width=400px style="border-radius: 10px;"}

## Import

```dart
import 'package:bilions_ui/bilions_ui.dart';

```

## Basic

```dart
BAlert(
  title: 'Error',
  message: 'First name and last name is required in the field',
),
```

## Variant

```dart
BAlert(
  title: 'Error',
  message: 'First name and last name is required in the field',
  variant: BVariant.danger,
),
```

## Alert Dialog

![Alert Dialog](../assets/alert_dialog.png){width=400px style="border-radius: 10px;"}

```dart
BAlertDialog.show(
  title: 'Error',
  message: 'First name and last name is required in the field',
);
```

!!! info "Dialog"
    Dialog will be show as a modal and can be closed by clicking the close icon or pressing the back button.

## Properties

| Property          | Description                                                    | Type       |
| ----------------- | -------------------------------------------------------------- | ---------- |
| `title`           | Alert title                                                    | `String`   |
| `message`         | Alert message                                                  | `String`   |
| `variant`         | Alert variant such as success, error, warning, info, etc.      | `BVariant` |
| `onClosed`        | If on closed function is present, it will show close indicator | `Function` |
| `icon`            | Alert prefix icon                                              | `Widget`   |
| `backgroundColor` | Alert background color                                         | `Color`    |

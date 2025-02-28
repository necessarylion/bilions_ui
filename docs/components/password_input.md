# Password Input

![Card](../assets/password_input.png){width=400px}

## Import

```dart
import 'package:bilions_ui/bilions_ui.dart';

```

## Usage

```dart
String password = '';

...

BPasswordInput(
  label: 'Password',
  placeholder: 'Enter your password',
  initialValue: password,
  onChanged: (value) {
    setState(() {
      password = value;
    });
  },
  prefixIcon: Icon(Icons.lock, color: BColors.primary),
  suffixIcon: Icon(Icons.visibility, color: BColors.primary),
),

...

```

## Properties

| Property           | Description                        | Type                    |
| ------------------ | ---------------------------------- | ----------------------- |
| `initialValue`     | Initial value of the text input    | `String`                |
| `label`            | Label of the text input            | `String`                |
| `placeholder`      | Placeholder of the text input      | `String`                |
| `prefixIcon`       | Prefix icon of the text input      | `Widget`                |
| `suffixIcon`       | Suffix icon of the text input      | `Widget`                |
| `onChanged`        | Trigger when text input is changed | `Function(String)`      |
| `labelColor`       | Color of the label                 | `Color`                 |
| `placeholderColor` | Color of the placeholder           | `Color`                 |
| `textColor`        | Color of the text input            | `Color`                 |
| `variant`          | Variant of the text input          | `BVariant`              |
| `controller`       | Controller of the text input       | `TextEditingController` |
| `borderRadius`     | Border radius of the text input    | `double`                |

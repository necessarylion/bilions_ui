# Toast

![Card](../assets/toast.png){width=400px style="border-radius: 10px;"}

## Import

```dart
import 'package:bilions_ui/bilions_ui.dart';

```

## Usage

```dart
BToast.show(
  title: 'Something went wrong! Please try again.',
  variant: BVariant.danger,
  duration: Duration(seconds: 2),
);
```

## Properties

| Property       | Description         | Type       |
| -------------- | ------------------- | ---------- |
| `title`        | Toast title         | `String`   |
| `variant`      | Toast variant       | `BVariant` |
| `duration`     | Toast duration      | `Duration` |
| `marginTop`    | Toast margin top    | `double`   |
| `marginLeft`   | Toast margin left   | `double`   |
| `marginRight`  | Toast margin right  | `double`   |
| `borderRadius` | Toast Border radius | `double`   |

# Button

![Button](../assets/button.png){width=300px style="border-radius: 10px;"}

## Import

```dart
import 'package:bilions_ui/bilions_ui.dart';

```

## Basic

```dart
BButton(
  title: 'Button Title',
  onPressed: () {
    /// do something
  }
)
```

## Flat

```dart
BButton(
  title: 'Button Title',
  onPressed: () {
    /// do something
  },
  type: BButtonType.flat,
)
```

## Outline

```dart
BButton(
  title: 'Button Title',
  onPressed: () {
    /// do something
  },
  type: BButtonType.outline,
)
```

## Icon

```dart
BButton(
  icon: Icon(Icons.add, color: BColors.white),
  onPressed: () {},
  height: 40,
  width: 40,
)
```

## Properties

| Property       | Description                                                | Type          |
| -------------- | ---------------------------------------------------------- | ------------- |
| `title`        | Title of the button                                        | `String`      |
| `icon`         | Icon of the button                                         | `Widget`      |
| `width`        | Width of the button                                        | `double`      |
| `height`       | Height of the button                                       | `double`      |
| `borderRadius` | Border radius of the button                                | `double`      |
| `disable`      | Disable button                                             | `bool`        |
| `onPressed`    | Trigger when button is pressed                             | `function`    |
| `variant`      | Button variant such as success, error, warning, info, etc. | `BVariant`    |
| `color`        | Change the button color                                    | `Color`       |
| `children`     | Use custom widget inside button                            | `Widget`      |
| `type`         | Button type "flat" or "outline"                            | `BButtonType` |

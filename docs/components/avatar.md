# Avatar

![Avatar Placeholder](../assets/avatar.png){width=200px style="border-radius: 10px;"}

<!-- It would be beneficial to replace the placeholder above with an actual image of the BAvatar component -->

The `BAvatar` component is used to display a user's avatar image, optionally with a title and subtitle.

## Import

```dart
import 'package:bilions_ui/bilions_ui.dart';
```

## Basic Usage

To display a simple avatar:

```dart
BAvatar('https://example.com/path/to/avatar.jpg')
```

To display an avatar with a title and subtitle:

```dart
BAvatar(
  'https://example.com/path/to/avatar.jpg',
  title: 'John Doe',
  subTitle: 'Software Engineer',
  size: 50,
  backgroundColor: Colors.blueAccent,
)
```

## Properties

| Property          | Description                                        | Type      | Default |
| ----------------- | -------------------------------------------------- | --------- | ------- |
| `src`             | The source URL or asset path for the image.        | `String`  | -       |
| `title`           | An optional title displayed next to the avatar.    | `String?` | `null`  |
| `subTitle`        | An optional subtitle displayed below the title.    | `String?` | `null`  |
| `size`            | The size (height and width) of the avatar image.   | `double?` | `40`    |
| `backgroundColor` | Background color for the image container if needed.| `Color?`  | `null`  |

# Image Preview

![Card](../assets/image_preview.png){width=200px style="border-radius: 20px;"}

## Import

```dart
import 'package:bilions_ui/bilions_ui.dart';

```

## Usage

```dart

...

onPressed: () {
  BImagePreview.show(
    activeImageIndex: 1,
    images: [
      'https://picsum.photos/seed/1741076833940/300/300',
      'https://picsum.photos/seed/1741076833938/300/300',
      'https://picsum.photos/seed/1741076833939/300/300',
    ],
  );
}

...

```

## Properties

| Property           | Description        | Type           |
| ------------------ | ------------------ | -------------- |
| `activeImageIndex` | Active image index | `int`          |
| `images`           | List of images     | `List<String>` |
| `closeButton`      | Close button       | `Widget`       |
| `backgroundColor`  | Background color   | `Color`        |

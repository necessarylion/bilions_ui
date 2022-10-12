# Bilions Flutter UI

# Functions

## Alert
<!-- tabs:start -->
#### **Alert Code**
```dart
alert(
  context,
  'Title here',
  'Description here',
  variant: Variant.warning, 
)
```
#### **Alert Demo**
<img src="assets/alert.png" width="300" />
<!-- tabs:end -->


## Toast
<!-- tabs:start -->
#### **Toast Code**
```dart
toast(context, 'Confirmed', variant: Variant.success);

```
#### **Toast Demo**
<img src="assets/toast.png" width="300" />
<!-- tabs:end -->

## Confirm Dialog
<!-- tabs:start -->
#### **Dialog Code**
```dart
ConfirmDialog(
  'Are you sure?',
  message: 'Are you sure to delete?',
  variant: Variant.warning,
  confirmed: () {
    // do something here
  },
)
```
#### **Dialog Demo**
<img src="assets/dialog.png" width="300" />
<!-- tabs:end -->

## Image Picker
<!-- tabs:start -->
#### **Image Picker Code**
```dart
openUploader(
  context, 
  variant: 'primary',
  onPicked: (FileInfo file) {
    console.log(file.path);
  },
);
```
#### **Image Picker Demo**
<img src="assets/image_picker.png" width="200" />
<!-- tabs:end -->

Add below lines in `ios/Runner/info.plist`

```dart
<key>NSPhotoLibraryUsageDescription</key>
<string>Allow Image access to upload your profile image</string>
<key>NSCameraUsageDescription</key>
<string>Allow Image access to upload your profile image</string>
```

## Image Preview
<!-- tabs:start -->
#### **Image Preview Code**
```dart
preview(context, [
  'https://picsum.photos/id/237/536/354',
  'https://picsum.photos/id/238/536/354',
  'https://picsum.photos/id/239/536/354',
])
```
#### **Image Preview Demo**
<img src="assets/image_preview.gif" width="200" />
<!-- tabs:end -->

## Menu 
<!-- tabs:start -->
#### **Menu Code**
```dart
menu(
  context,
  MenuList([
    MenuListItem(
      const Icon(
        Icons.edit,
        size: 20,
      ),
      title: 'Edit',
      onPressed: () {
        // do something
      },
    ),
    MenuListItem(
      Icon(
        Icons.copy,
        color: BilionsColors.success,
        size: 20,
      ),
      title: 'Clone',
      onPressed: () {
        // do something
      },
    ),
    MenuListItem(
      Icon(
        Icons.delete,
        color: BilionsColors.danger,
        size: 20,
      ),
      title: 'Delete',
      onPressed: () {
        // do something
      },
    ),
  ]),
);
```
#### **Menu Demo**
<img src="assets/menu.png" width="200" />
<!-- tabs:end -->

# Components

## Date Picker Input 
<!-- tabs:start -->
#### **Date Picker Code**
```dart
BilionsDatePicker(
  label: 'Date of Birth', 
  onChanged: (date) => {}
),
```
#### **Date Range Code**
```dart
 BilionsDateRangePicker(
    label: 'Date of Birth',
    onChanged: (start, end) => {

    },
),
```
#### **Date Range & Date Picker Demo**
<img src="assets/date_picker.gif" width="200" />
<!-- tabs:end -->

## TextInput

```dart
BilionsTextInput(label: 'Full Name', onChanged: (text) => {})
```

## Password Input

```dart
BilionsPasswordInput(
  label: 'Password',
  onChanged: (value) => {},
  variant: Variant.danger,
)
```

## Avatar Image 

```dart
Avatar(
  'https://i.pravatar.cc/150?img=3',
  title: 'Zin Kyaw Kyaw',
  subTitle: 'aj@bilions.org',
)
```

## Image Slider 

```dart
ImageSlider([
  'https://picsum.photos/id/237/536/354',
  'https://picsum.photos/id/238/536/354',
  'https://picsum.photos/id/239/536/354',
])
```
## Buttons

<!-- tabs:start -->

#### **Primary Button**

```dart
PrimaryButton(
  'Button Title',
  variant : Variant.success,
  onPressed: () {
    // do something
  },
)
```

#### **Secondary Button**


```dart
SecondaryButton(
  'Button Title',
  variant : Variant.success,
  onPressed: () {
    // do something
  },
)
```

<!-- tabs:end -->


## Alert Widget

```dart
BilionsAlert(
  'Wake Up',
  'You need to code flutter',
  icon: Icon(Icons.alarm),
)
```

## Card 

```dart
CardWidget(
  header: const Avatar(
    'https://i.pravatar.cc/150?img=3',
    title: 'Zin Kyaw Kyaw',
    subTitle: 'aj@bilions.org',
  ),
  body: Column(
    children: const [
      Span(
        "Lorem Ipsum is simply dummy text of the printing and variantsetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of variant and scrambled it to make a variant specimen book. It has survived not only five centuries, but also the leap into electronic variantsetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      )
    ],
  ),
  footer: const Text('This is footer'),
)
```

## Table

```dart
BilionsTable(
    variant: Variant.success,
    widths: const [50, 30],
    header: const [
      TextLeft('Name', color: Colors.green, bold: true),
      TextCenter('Rank', color: Colors.green, bold: true),
      TextRight('Price', color: Colors.green, bold: true),
    ],
    body: const [
      [TextLeft('Ajay Pillai'), TextCenter('1'), TextRight('1000')],
      [TextLeft('Kumar Sharno'), TextCenter('2'), TextRight('1000')],
      [TextLeft('Anju Skk'), TextCenter('3'), TextRight('1000')],
      [TextLeft('Zin Kyaw Kyaw'), TextCenter('4'), TextRight('1000')],
    ],
  ),
```

# Utils

## Date formatter

- get current date time `now()` will return Current `DateTime` instance
- format date to string `moment.dateToString(now())` will return formatted string date
- format date to string `moment(now()).format(format: 'dd MMM yyyy')` will return formatted string date
- format date to string `moment('2022-11-22').parse()` will return `DateTime` instance

## Theme Colors

```dart
BilionsColor.primary
BilionsColor.primaryLight
BilionsColor.warning
BilionsColor.warningLight
BilionsColor.danger
BilionsColor.dangerLight
BilionsColor.info
BilionsColor.infoLight
BilionsColor.success
BilionsColor.successLight
```

## Variants

```dart
Variant.primary
Variant.warning
Variant.danger
Variant.info
Variant.success
```

## Theme Color configuration
- Want to set your own colors?
- You can set your own colors in main() function

```dart
void main() {

  BilionsUI bilionsUI = BilionsUI();
  bilionsUI.setColors(
    ColorConfig(
      danger: Colors.red,
      primary: Colors.blue,
      success: Colors.green,
      warning: Colors.yellow,
      info: Colors.purple,
    ),
  );

  runApp(const MyApp());
}
```
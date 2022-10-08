### Bilions UI Components

This package is currently in beta

![Preview](https://github.com/necessarylion/bilions_ui/raw/master/preview.png)


### Functions

##### Alert

```
alert(
  'Title here',
  'Description here',
  variant: 'warning', 
)

```
- variant `success, waring, danger, info`

##### Toast

```
toast('Confirmed', variant: 'success');

```
- variant `success, waring, danger, info`

##### Confirm Dialog
```
confirm(ConfirmDialog(
    'Are you sure?', 
    variant : 'success',
    confirmed: () {
      // do something here
    },
  ),
)
```

##### Image Picker

```
openUploader(context, 
  variant: 'primary',
  onPicked: (FileInfo file) {
    console.log(file.path);
  },
);
```
- add below lines in `ios->Runner->info.plist`
```
<key>NSPhotoLibraryUsageDescription</key>
<string>Allow Image access to upload your profile image</string>
<key>NSCameraUsageDescription</key>
<string>Allow Image access to upload your profile image</string>
```

##### Image Preview

```
preview([
  'https://picsum.photos/id/237/536/354',
  'https://picsum.photos/id/238/536/354',
  'https://picsum.photos/id/239/536/354',
])

```

##### Menu 

```
menu(
  MenuList([
    MenuListItem(
      Icon(
        Icons.edit,
        size: 20,
      ),
      title: 'Edit',
      onPressed: () {
        // do something
      },
    ),
  ])
)
```

### Component Widgets

##### DatePicker Input 

```
BilionsDatePicker(label: 'Date of Birth', onChanged: (date) => {}),
```

##### DateRangePicker Input

```
 BilionsDateRangePicker(
    label: 'Date of Birth',
    onChanged: (start, end) => {

    },
),
```

##### TextInput

```
BilionsTextInput(label: 'Full Name', onChanged: (text) => {})
```

##### Password Input

```
TODO
```

##### Avatar Image 

```
Avatar(
  'https://i.pravatar.cc/150?img=3',
  title: 'Zin Kyaw Kyaw',
  subTitle: 'aj@bilions.org',
)
```

##### Image Slider 

```
ImageSlider([
  'https://picsum.photos/id/237/536/354',
  'https://picsum.photos/id/238/536/354',
  'https://picsum.photos/id/239/536/354',
])
```
##### Primary Button

```
PrimaryButton(
  'Button Title',
  variant : 'success',
  onPressed: () {
    // do something
  },
)
```
##### Secondary Button

```
SecondaryButton(
  'Button Title',
  variant : 'success',
  onPressed: () {
    // do something
  },
)
```

##### Card 
```
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

## Date formatter

- TODO Documentation

## Access Theme Colors

```
- BilionsColor.primary
- BilionsColor.primaryLight

- BilionsColor.warning
- BilionsColor.warningLight

- BilionsColor.danger
- BilionsColor.dangerLight

- BilionsColor.info
- BilionsColor.infoLight

- BilionsColor.success
- BilionsColor.successLight
...
```
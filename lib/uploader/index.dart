part of bilions_ui;

class BUploader {
  // show uploader with bottom sheet menu
  static show({
    BuildContext? context,
    required Function(FileInfo?) onPicked,
    Color? lineColor,
    double? lineThickness,
    BVariant? variant,
  }) {
    BBottomSheetMenu.show(
      context: context,
      widget: BMenuList(
        list: [
          BMenuListItem(
            icon: Icon(
              Icons.photo_library_rounded,
              color: BilionsTheme.getColor(variant ?? BVariant.primary),
            ),
            title: 'Gallery',
            subTitle: 'Select image from your photo gallery',
            onPressed: () async {
              FileInfo? file =
                  await BUploader.showFileUpload(ImageSource.gallery);
              onPicked(file);
            },
          ),
          BMenuListItem(
            icon: Icon(
              Icons.camera,
              color: BilionsTheme.getColor(variant ?? BVariant.primary),
            ),
            title: 'Camera',
            subTitle: 'Open camera to take photo',
            onPressed: () async {
              FileInfo? file =
                  await BUploader.showFileUpload(ImageSource.camera);
              onPicked(file);
            },
          ),
        ],
        lineColor: lineColor,
        lineThickness: lineThickness,
      ),
    );
  }

  static hide({BuildContext? context}) {
    Navigator.pop(context ?? getCurrentContext());
  }

  static Future<FileInfo?> showFileUpload(ImageSource source) async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: source);
    if (image == null) {
      return null;
    }
    return FileInfo(
      path: image.path,
      name: image.name,
      file: File(image.path),
    );
  }
}

class FileInfo {
  final String path;
  final String name;
  final File? file;
  FileInfo({
    required this.path,
    required this.name,
    this.file,
  });
}

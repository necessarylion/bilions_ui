part of bilions_ui;

openUploader(
  BuildContext context, {
  required Function(FileInfo) onPicked,
  String variant = 'primary',
}) {
  menu(
    context,
    MenuList([
      MenuListItem(
        Icon(
          Icons.photo_library_rounded,
          color: BilionsTheme.getColor(variant),
        ),
        title: 'Gallery',
        subTitle: 'Select image from your photo gallery',
        onPressed: () async {
          FileInfo file = await showFileUpload(ImageSource.gallery);
          onPicked(file);
        },
      ),
      MenuListItem(
        Icon(
          Icons.camera,
          color: BilionsTheme.getColor(variant),
        ),
        title: 'Camera',
        subTitle: 'Open camera to take photo',
        onPressed: () async {
          FileInfo file = await showFileUpload(ImageSource.camera);
          onPicked(file);
        },
      ),
    ]),
  );
}

showFileUpload(ImageSource source) async {
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

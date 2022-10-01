part of bilions_ui;

class ImagePreviewModal extends StatelessWidget {
  final List images;
  final int? index;
  const ImagePreviewModal(
    this.images, {
    Key? key,
    this.index = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PhotoViewGallery.builder(
          pageController: PageController(initialPage: index ?? 0),
          backgroundDecoration: BoxDecoration(
            color: AppColors.dark,
          ),
          itemCount: images.length,
          builder: (context, index) {
            final image = images[index];
            return PhotoViewGalleryPageOptions(
              imageProvider: NetworkImage(image),
            );
          },
        ),
        Positioned(
          top: 50,
          right: 20,
          child: IconPressButton(
            Icon(
              Icons.close,
              color: AppColors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ],
    );
  }
}

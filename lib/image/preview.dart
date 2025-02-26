part of bilions_ui;

class BImagePreview extends StatelessWidget {
  final List images;
  final int? index;
  final bool showCloseButton;
  final Widget? closeButton;
  final Color? backgroundColor;

  const BImagePreview(
    this.images, {
    Key? key,
    this.index = 0,
    this.showCloseButton = false,
    this.closeButton,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PhotoViewGallery.builder(
          pageController: PageController(initialPage: index ?? 0),
          backgroundDecoration: BoxDecoration(
            color: backgroundColor ?? BilionsColors.dark,
          ),
          itemCount: images.length,
          builder: (context, index) {
            final image = images[index];
            return PhotoViewGalleryPageOptions(
              imageProvider: NetworkImage(image),
            );
          },
        ),
        if (showCloseButton)
          Positioned(
            top: 50,
            right: 20,
            child: closeButton ??
                BButton(
                  width: 40,
                  height: 40,
                  icon: Icon(
                    Icons.close,
                    color: BilionsColors.white,
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

part of bilions_ui;

class BImagePreview extends StatelessWidget {
  final List images;
  final int? activeImageIndex;
  final bool showCloseButton;
  final Widget? closeButton;
  final Color? backgroundColor;

  const BImagePreview(
    this.images, {
    Key? key,
    this.activeImageIndex = 0,
    this.showCloseButton = false,
    this.closeButton,
    this.backgroundColor,
  }) : super(key: key);

  static show({
    BuildContext? context,
    List? images,
    int? activeImageIndex,
    Widget? closeButton,
    Color? backgroundColor,
  }) {
    showModalBottomSheet(
      context: context ?? getCurrentContext(),
      isScrollControlled: true,
      backgroundColor: backgroundColor ?? BColors.dark,
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 1,
          child: BImagePreview(
            images ?? [],
            activeImageIndex: activeImageIndex,
            showCloseButton: true,
            closeButton: closeButton,
            backgroundColor: backgroundColor,
          ),
        );
      },
    );
  }

  static hide({BuildContext? context}) {
    Navigator.pop(context ?? getCurrentContext());
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PhotoViewGallery.builder(
          pageController: PageController(initialPage: activeImageIndex ?? 0),
          backgroundDecoration: BoxDecoration(
            color: backgroundColor ?? BColors.dark,
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
                  color: backgroundColor ?? BColors.dark,
                  icon: Icon(
                    Icons.close,
                    color: BColors.white,
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

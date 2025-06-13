part of bilions_ui;

class BImageSlider extends StatelessWidget {
  final List images;
  final double? ratio;
  final int? activeImageIndex;

  const BImageSlider(
    this.images, {
    Key? key,
    this.ratio,
    this.activeImageIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: ratio ?? 1.7,
        enlargeCenterPage: true,
        enableInfiniteScroll: false,
        initialPage: activeImageIndex ?? ((images.length / 2).round() - 1),
        autoPlay: false,
      ),
      items: [
        ...images
            .mapIndexed(
              (e, index) => InkWell(
                onTap: () {
                  BImagePreview.show(
                    context: context,
                    images: images,
                    activeImageIndex: index,
                  );
                },
                child: BImage(
                  e,
                  fit: BoxFit.cover,
                  radius: 10,
                ),
              ),
            )
            .toList(),
      ],
    );
  }
}

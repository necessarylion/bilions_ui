part of bilions_ui;

class BImageSlider extends StatelessWidget {
  final List images;
  final double? ratio;
  const BImageSlider(this.images, {Key? key, this.ratio}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: ratio ?? 1.7,
        enlargeCenterPage: true,
        enableInfiniteScroll: false,
        initialPage: 2,
        autoPlay: false,
      ),
      items: [
        ...images
            .mapIndexed(
              (e, index) => InkWell(
                onTap: () {
                  BImagePreviewModal.show(
                    context: context,
                    images: images,
                    index: index,
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

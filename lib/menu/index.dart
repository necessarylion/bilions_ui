part of bilions_ui;

menu(BuildContext context, Widget widget) {
  showModalBottomSheet(
    context: context,
    backgroundColor: AppColors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    builder: (_) => Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        mb(0.5),
        Container(
          height: 4,
          width: 50,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: const BorderRadius.all(Radius.circular(3)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 30),
          child: widget,
        ),
      ],
    ),
  );
}

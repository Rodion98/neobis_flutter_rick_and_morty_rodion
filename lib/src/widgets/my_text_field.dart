part of io_ui;

class MyTextFiled extends StatefulWidget {
  TextEditingController textEditingController;
  final Function(String) onChangedCallback;
  MyTextFiled(
      {required this.onChangedCallback,
      required this.textEditingController,
      super.key});

  @override
  State<MyTextFiled> createState() => _MyTextFiledState();
}

class _MyTextFiledState extends State<MyTextFiled> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: TextField(
              style: AppTextStyle.typedText16,
              controller: widget.textEditingController,
              onChanged: (text) {
                widget.onChangedCallback(
                    text); // Вызываем обратный вызов при изменении текста
              },
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                  hintText: 'Найти персонажа',
                  hintStyle:
                      const TextStyle(color: AppColors.greyUsual, fontSize: 16),
                  filled: true,
                  fillColor: AppColors.searchFiledColor,
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: Assets.icons.search.svg(),
                  ),
                  suffixIcon: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: GestureDetector(
                      onTap: () {
                        AutoRouter.of(context).push(FilterRoute());
                      },
                      child: SizedBox(
                          height: 24,
                          width: 24,
                          child: Assets.icons.filter.svg()),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

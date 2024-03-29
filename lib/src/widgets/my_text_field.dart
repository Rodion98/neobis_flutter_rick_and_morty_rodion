part of io_ui;

class MyTextFiled extends StatelessWidget {
  const MyTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: TextField(
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
                    child: SizedBox(
                        height: 24,
                        width: 24,
                        child: Assets.icons.filter.svg()),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

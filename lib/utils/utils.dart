import '../constant/exports.dart';

class Selector extends StatelessWidget {
  final void Function()? onPress;
  final bool isSelected;
  final String txt;
  const Selector(
      {required this.onPress,
      required this.isSelected,
      required this.txt,
      super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 7),
        child: Row(
          children: [
            Container(
              width: 25,
              height: 25,
              padding: const EdgeInsets.all(2.5),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black)),
              child: CircleAvatar(
                backgroundColor: isSelected ? appBlueColor : Colors.white,
                radius: 10,
              ),
            ),
            horizontalSpacer(space: 0.02),
            appText(myText: txt, myfontSize: 16, mfontweight: FontWeight.w500)
          ],
        ),
      ),
    );
  }
}

class Selector02 extends StatelessWidget {
  final void Function()? onPress;
  final bool isSelected;
  final String txt;
  const Selector02(
      {required this.onPress,
      required this.isSelected,
      required this.txt,
      super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white,
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 35),
        padding: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
            color: isSelected
                ? const Color.fromARGB(255, 238, 238, 238)
                : Colors.white,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            appText(myText: txt, myfontSize: 16, mfontweight: FontWeight.w500)
          ],
        ),
      ),
    );
  }
}

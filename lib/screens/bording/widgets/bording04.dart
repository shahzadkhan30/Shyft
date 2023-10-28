import '../../../constant/exports.dart';
import '../../../utils/utils.dart';

class Bording04 extends StatefulWidget {
  const Bording04({super.key});

  @override
  State<Bording04> createState() => _Bording04State();
}

class _Bording04State extends State<Bording04> {
  List<bool> itemSelected = [
    true,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        appText(
            myText:
                "Do you only want to look at roles with a specific engagement type?",
            myColors: appBlackColor,
            isCenter: false,
            mfontweight: FontWeight.w700,
            myfontSize: 18),
        verticalSpacer(space: 0.08),
        Selector(
          isSelected: itemSelected[0],
          txt: "Full-Time",
          onPress: () {
            itemSelected[0] = true;
            itemSelected[1] = false;
            itemSelected[2] = false;
            itemSelected[3] = false;
            setState(() {});
          },
        ),
        Selector(
          isSelected: itemSelected[1],
          txt: "Part-Time",
          onPress: () {
            itemSelected[1] = true;
            itemSelected[0] = false;
            itemSelected[2] = false;
            itemSelected[3] = false;
            setState(() {});
          },
        ),
        Selector(
          isSelected: itemSelected[2],
          txt: "No preference",
          onPress: () {
            itemSelected[2] = true;
            itemSelected[1] = false;
            itemSelected[0] = false;
            itemSelected[3] = false;
            setState(() {});
          },
        ),
        Selector(
          isSelected: itemSelected[3],
          txt: "Consultant Doctor",
          onPress: () {
            itemSelected[3] = true;
            itemSelected[1] = false;
            itemSelected[0] = false;
            itemSelected[2] = false;
            setState(() {});
          },
        )
      ],
    );
  }
}

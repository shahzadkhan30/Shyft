import '../../../constant/exports.dart';
import '../../../utils/utils.dart';

class Bording02 extends StatefulWidget {
  const Bording02({super.key});

  @override
  State<Bording02> createState() => _Bording02State();
}

class _Bording02State extends State<Bording02> {
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
            myText: "What best describes your roles you are looking for?",
            myColors: appBlackColor,
            isCenter: false,
            mfontweight: FontWeight.w700,
            myfontSize: 18),
        verticalSpacer(space: 0.08),
        Selector(
          isSelected: itemSelected[0],
          txt: "Nurse",
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
          txt: "General Practioner",
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
          txt: "Junior Doctor",
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

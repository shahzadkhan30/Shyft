import '../../../constant/exports.dart';
import '../../../utils/utils.dart';

class Bording03 extends StatefulWidget {
  const Bording03({super.key});

  @override
  State<Bording03> createState() => _Bording02State();
}

class _Bording02State extends State<Bording03> {
  List<bool> itemSelected = [
    false,
    true,
  ];
  List<bool> itemSelected2 = [
    true,
    false,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        appText(
            myText: "Do you only want to look at roles with specialist focus",
            myColors: appBlackColor,
            isCenter: false,
            mfontweight: FontWeight.w700,
            myfontSize: 18),
        verticalSpacer(space: 0.08),
        Selector(
          isSelected: itemSelected[0],
          txt: "No",
          onPress: () {
            itemSelected[0] = true;
            itemSelected[1] = false;

            setState(() {});
          },
        ),
        Selector(
          isSelected: itemSelected[1],
          txt: "Yes",
          onPress: () {
            itemSelected[1] = true;
            itemSelected[0] = false;

            setState(() {});
          },
        ),
        const Spacer(),
        itemSelected[0]
            ? const SizedBox()
            : Column(
                children: [
                  const Divider(),
                  verticalSpacer(space: 0.03),
                  Selector02(
                      onPress: () {
                        itemSelected2[0] = true;
                        itemSelected2[1] = false;
                        itemSelected2[2] = false;
                        itemSelected2[3] = false;
                        itemSelected2[4] = false;
                        setState(() {});
                      },
                      isSelected: itemSelected2[0],
                      txt: "Radiology"),
                  Selector02(
                      onPress: () {
                        itemSelected2[0] = false;
                        itemSelected2[1] = true;
                        itemSelected2[2] = false;
                        itemSelected2[3] = false;
                        itemSelected2[4] = false;
                        setState(() {});
                      },
                      isSelected: itemSelected2[1],
                      txt: "Opthalmology"),
                  Selector02(
                      onPress: () {
                        itemSelected2[0] = false;
                        itemSelected2[1] = false;
                        itemSelected2[2] = true;
                        itemSelected2[3] = false;
                        itemSelected2[4] = false;
                        setState(() {});
                      },
                      isSelected: itemSelected2[2],
                      txt: "Peadeatric"),
                  Selector02(
                      onPress: () {
                        itemSelected2[0] = false;
                        itemSelected2[1] = false;
                        itemSelected2[2] = false;
                        itemSelected2[3] = true;
                        itemSelected2[4] = false;
                        setState(() {});
                      },
                      isSelected: itemSelected2[3],
                      txt: "Urology"),
                  Selector02(
                      onPress: () {
                        itemSelected2[0] = false;
                        itemSelected2[1] = false;
                        itemSelected2[2] = false;
                        itemSelected2[3] = false;
                        itemSelected2[4] = true;
                        setState(() {});
                      },
                      isSelected: itemSelected2[4],
                      txt: "Obstetrics"),
                  verticalSpacer(space: 0.03),
                ],
              )
      ],
    );
  }
}

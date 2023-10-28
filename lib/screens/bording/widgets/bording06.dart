import 'package:shyft/widgets/app_text_field.dart';

import '../../../constant/exports.dart';

class Bording06 extends StatefulWidget {
  const Bording06({super.key});

  @override
  State<Bording06> createState() => _Bording06State();
}

class _Bording06State extends State<Bording06> {
  TextEditingController cnt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        appText(
            myText: "Where would you like to see roles around?",
            myColors: appBlackColor,
            isCenter: false,
            mfontweight: FontWeight.w700,
            myfontSize: 18),
        verticalSpacer(space: 0.03),
        SizedBox(
          height: 50,
          child: customTextField(
              myControler: cnt,
              mYhintText: "Enter address",
              fieldValidator: (value) => null,
              keyBordType: TextInputType.text,
              maxLiness: 1),
        )
      ],
    );
  }
}

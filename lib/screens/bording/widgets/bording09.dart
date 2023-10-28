import 'package:shyft/widgets/app_text_field.dart';

import '../../../constant/exports.dart';

class Bording09 extends StatefulWidget {
  const Bording09({super.key});

  @override
  State<Bording09> createState() => _Bording07State();
}

class _Bording07State extends State<Bording09> {
  TextEditingController cnt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        appText(
            myText: "You care for patients. We care for you. ",
            myColors: appBlackColor,
            isCenter: false,
            mfontweight: FontWeight.w700,
            myfontSize: 18),
        verticalSpacer(space: 0.02),
        appText(
            myText:
                "Locum is great, but needs management. We take of that, so you can take care of your patients.",
            myColors: appBlackColor,
            isCenter: false,
            mfontweight: FontWeight.w400,
            myfontSize: 16),
        verticalSpacer(space: 0.04),
        SizedBox(
          height: 50,
          child: customTextField(
              myControler: cnt,
              mYhintText: "Enter your email address",
              fieldValidator: (value) => null,
              keyBordType: TextInputType.emailAddress,
              maxLiness: 1),
        )
      ],
    );
  }
}

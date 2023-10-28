import 'package:shyft/widgets/app_text_field.dart';

import '../../../constant/exports.dart';

class Bording07 extends StatefulWidget {
  const Bording07({super.key});

  @override
  State<Bording07> createState() => _Bording07State();
}

class _Bording07State extends State<Bording07> {
  TextEditingController cnt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        appText(
            myText: "Healthcare is nothing without you...",
            myColors: appBlackColor,
            isCenter: false,
            mfontweight: FontWeight.w700,
            myfontSize: 18),
        verticalSpacer(space: 0.02),
        appText(
            myText:
                "Join Shyft and we guarantee you work you are passionate about, at pay you deserve.",
            myColors: appBlackColor,
            isCenter: false,
            mfontweight: FontWeight.w400,
            myfontSize: 16),
        verticalSpacer(space: 0.08),
        SizedBox(
          height: 50,
          child: customTextField(
              myControler: cnt,
              mYhintText: "Enter your mobile number",
              fieldValidator: (value) => null,
              keyBordType: TextInputType.text,
              maxLiness: 1),
        )
      ],
    );
  }
}

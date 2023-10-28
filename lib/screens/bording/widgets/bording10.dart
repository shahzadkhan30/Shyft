import 'package:shyft/widgets/app_text_field.dart';
import '../../../constant/exports.dart';

class Bording10 extends StatefulWidget {
  const Bording10({super.key});

  @override
  State<Bording10> createState() => _Bording07State();
}

class _Bording07State extends State<Bording10> {
  TextEditingController cnt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        appText(
            myText: "Just validating you’re a human.",
            myColors: appBlackColor,
            isCenter: false,
            mfontweight: FontWeight.w700,
            myfontSize: 18),
        verticalSpacer(space: 0.02),
        appText(
            myText: "Please enter the verification code we just text you.",
            myColors: appBlackColor,
            isCenter: false,
            mfontweight: FontWeight.w400,
            myfontSize: 16),
        verticalSpacer(space: 0.08),
        SizedBox(
          height: 50,
          child: customTextField(
              myControler: cnt,
              mYhintText: "Enter your verification code",
              fieldValidator: (value) => null,
              keyBordType: TextInputType.text,
              maxLiness: 1),
        )
      ],
    );
  }
}

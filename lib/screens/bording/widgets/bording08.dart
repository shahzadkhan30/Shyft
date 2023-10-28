import 'package:shyft/widgets/app_text_field.dart';
import '../../../constant/exports.dart';

class Bording08 extends StatefulWidget {
  const Bording08({super.key});

  @override
  State<Bording08> createState() => _Bording07State();
}

class _Bording07State extends State<Bording08> {
  TextEditingController cnt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Column(
      children: [
        appText(
            myText: "Find opportunities that suit you...",
            myColors: appBlackColor,
            isCenter: false,
            mfontweight: FontWeight.w700,
            myfontSize: 18),
        verticalSpacer(space: 0.02),
        appText(
            myText:
                "We find out what you want from your next opportunity and then only present the locum roles that fit that criteria. ",
            myColors: appBlackColor,
            isCenter: false,
            mfontweight: FontWeight.w400,
            myfontSize: 16),
        verticalSpacer(space: 0.08),
        Row(
          children: [
            SizedBox(
              height: 50,
              width: w * 0.4,
              child: customTextField(
                  myControler: cnt,
                  mYhintText: "First Name",
                  fieldValidator: (value) => null,
                  keyBordType: TextInputType.text,
                  maxLiness: 1),
            ),
            const Spacer(),
            SizedBox(
              height: 50,
              width: w * 0.4,
              child: customTextField(
                  myControler: cnt,
                  mYhintText: "Last Name",
                  fieldValidator: (value) => null,
                  keyBordType: TextInputType.text,
                  maxLiness: 1),
            ),
          ],
        )
      ],
    );
  }
}

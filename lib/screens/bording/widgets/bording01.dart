import '../../../constant/exports.dart';

class Bording01 extends StatelessWidget {
  const Bording01({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        appText(
            myText:
                "Since 2012, we've helped 100's of medical professionals get the financially and spiritually rewardig roles they deserve... ",
            myColors: appBlackColor,
            isCenter: false,
            mfontweight: FontWeight.w700,
            myfontSize: 18),
        verticalSpacer(space: 0.08),
        Row(
          children: [
            appText(
                myText: ' Ninos, let us help you...',
                myColors: appBlackColor,
                isCenter: false,
                mfontweight: FontWeight.w700,
                myfontSize: 18),
          ],
        ),
      ],
    );
  }
}

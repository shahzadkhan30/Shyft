import 'package:shyft/screens/bording/widgets/Bording06.dart';
import 'package:shyft/screens/bording/widgets/bording01.dart';
import 'package:shyft/screens/bording/widgets/bording02.dart';
import 'package:shyft/screens/bording/widgets/bording03.dart';
import 'package:shyft/screens/bording/widgets/bording04.dart';
import 'package:shyft/screens/bording/widgets/bording05.dart';
import 'package:shyft/screens/bording/widgets/bording07.dart';
import 'package:shyft/screens/bording/widgets/bording08.dart';
import 'package:shyft/screens/bording/widgets/bording09.dart';
import 'package:shyft/screens/bording/widgets/bording10.dart';
import 'package:shyft/widgets/app_button.dart';

import '../../constant/exports.dart';

class BordingScreen extends StatefulWidget {
  const BordingScreen({super.key});

  @override
  State<BordingScreen> createState() => _BordingScreenState();
}

class _BordingScreenState extends State<BordingScreen> {
  PageController pageController = PageController(
    initialPage: 0,
  );
  int pageNumber = 0;
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: h,
          width: w,
          child: Stack(
            children: [
              Container(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.07),
                  height: h,
                  width: w,
                  child: Column(
                    children: [
                      verticalSpacer(space: 0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          appText(
                              myText: "${pageNumber + 1} of 10",
                              myColors: Colors.grey,
                              isCenter: false,
                              mfontweight: FontWeight.w500,
                              myfontSize: 16),
                        ],
                      ),
                      verticalSpacer(space: 0.06),
                      SizedBox(
                          width: w * 0.5,
                          child: Image.asset("assets/applogo.png")),
                      verticalSpacer(space: 0.03),
                      Expanded(
                          child: PageView(
                        onPageChanged: (v) {
                          pageNumber = v;
                          setState(() {});
                        },
                        controller: pageController,
                        physics: const BouncingScrollPhysics(), // Bounce effect
                        scrollDirection: Axis.horizontal,
                        pageSnapping: true,
                        children: const [
                          Bording01(),
                          Bording02(),
                          Bording03(),
                          Bording04(),
                          Bording05(),
                          Bording06(),
                          Bording07(),
                          Bording08(),
                          Bording09(),
                          Bording10(),
                        ],
                      ))
                    ],
                  )),
              AnimatedPositioned(
                  bottom: pageNumber == 2 ? h * 0.34 : 15,
                  left: 0,
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn,
                  child: SizedBox(
                    width: w,
                    child: Center(
                      child: SizedBox(
                        width: w * 0.85,
                        child: Column(
                          children: [
                            pageNumber == 0
                                ? const SizedBox()
                                : pageNumber == 2
                                    ? const SizedBox()
                                    : pageNumber == 6
                                        ? const SizedBox()
                                        : pageNumber == 7
                                            ? const SizedBox()
                                            : pageNumber == 8
                                                ? const SizedBox()
                                                : pageNumber == 9
                                                    ? const SizedBox()
                                                    : Card(
                                                        elevation: 4,
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        color: Colors.white,
                                                        child: Container(
                                                          color: Colors.white,
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      20,
                                                                  vertical: 20),
                                                          width: w * 0.85,
                                                          child: appText(
                                                              myText: txtStrings[
                                                                  pageNumber],
                                                              mfontweight:
                                                                  FontWeight
                                                                      .w600,
                                                              myfontSize: 14),
                                                        ),
                                                      ),
                            verticalSpacer(space: 0.03),
                            appButton(
                                myfontSize: 18,
                                buttonText: "Continue",
                                ontapfunction: () {
                                  pageController.nextPage(
                                      duration: const Duration(seconds: 1),
                                      curve: Curves.bounceInOut);
                                  setState(() {});
                                }),
                          ],
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

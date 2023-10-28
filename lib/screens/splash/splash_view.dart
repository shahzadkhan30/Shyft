import '../../constant/exports.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2)).whenComplete(() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const BordingScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          height: h,
          width: w,
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: h * 0.35,
                ),
                SizedBox(
                    width: w * 0.8, child: Image.asset("assets/applogo.png")),
                verticalSpacer(space: 0.02),
                appText(
                    myText: "Getting you work you deserve",
                    myColors: appBlackColor,
                    mfontweight: FontWeight.w500,
                    myfontSize: 20),
                SizedBox(
                  height: h * 0.15,
                ),
                SpinKitCircle(
                  color: appBlackColor,
                ),
                const Spacer(),
                appText(
                    myText: "A Venture Partnership product",
                    myColors: appBlackColor,
                    mfontweight: FontWeight.w700,
                    myfontSize: 14),
                verticalSpacer(space: 0.03)
              ],
            ),
          ),
        ));
  }
}

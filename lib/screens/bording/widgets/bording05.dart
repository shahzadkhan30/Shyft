import '../../../constant/exports.dart';

class Bording05 extends StatefulWidget {
  const Bording05({super.key});

  @override
  State<Bording05> createState() => _Bording05State();
}

class _Bording05State extends State<Bording05> {
  double _currentSliderValue = 18;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        appText(
            myText: "Do you only want to look at roles above a specific pay?",
            myColors: appBlackColor,
            isCenter: false,
            mfontweight: FontWeight.w700,
            myfontSize: 18),
        verticalSpacer(space: 0.08),
        appText(
            myText: "€ $_currentSliderValue / hour",
            myColors: appBlackColor,
            isCenter: false,
            mfontweight: FontWeight.w700,
            myfontSize: 18),
        Slider(
          value: _currentSliderValue,
          secondaryActiveColor: Colors.white,
          max: 100,
          divisions: 5,
          label: _currentSliderValue.round().toString(),
          onChanged: (double value) {
            setState(() {
              _currentSliderValue = value;
            });
          },
        ),
      ],
    );
  }
}

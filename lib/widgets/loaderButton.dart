import '../constant/exports.dart';

Widget loaderButton() {
  return Builder(builder: (context) {
    return Container(
      height: 62,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: AssetImage('assets/images/loaderButton.png'))),
      child: const Center(
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      ),
    );
  });
}

Widget imageButton({required String img}) {
  return Builder(builder: (context) {
    return Container(
      height: 62,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.fitWidth, image: AssetImage(img))),
    );
  });
}

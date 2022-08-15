import '../../../utils/exports.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/icons/google.png',
          height: Get.height * 0.05,
        ),
        SizedBox(width: Get.width * 0.06),
        Image.asset(
          'assets/icons/facebook.png',
          height: Get.height * 0.05,
        ),
      ],
    );
  }
}

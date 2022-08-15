import '../../../utils/exports.dart';

class AuthHeader extends StatelessWidget {
  final String imagePath;
  final String text;
  final Color? color;

  const AuthHeader({
    Key? key,
    required this.imagePath,
    required this.text,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          height: Get.height * 0.35,
          fit: BoxFit.cover,
        ),
        TitleTextStyle(text: text),
      ],
    );
  }
}

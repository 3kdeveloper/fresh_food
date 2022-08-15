import '../../utils/exports.dart';

class CustomButton extends StatelessWidget {
  final String btnText;
  final double? width;
  final VoidCallback onTap;

  const CustomButton({
    Key? key,
    required this.btnText,
    this.width = 0.8,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: Get.height * 0.08,
        width: Get.width * width!,
        decoration: BoxDecoration(
          color: AppTheme.kPrimaryColor,
          //todo make this smooth
          borderRadius: BorderRadius.circular(15),
        ),
        child: TitleTextStyle(
          text: btnText,
          color: AppTheme.kWhiteColor,
        ),
      ),
    );
  }
}

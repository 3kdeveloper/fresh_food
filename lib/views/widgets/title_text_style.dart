import '../../utils/exports.dart';

class TitleTextStyle extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;

  const TitleTextStyle({
    Key? key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: TextStyle(
        fontWeight: fontWeight ?? FontWeight.w700,
        fontSize: fontSize ?? 20,
        fontFamily: 'RobotoMono-Regular',
        color: color ?? AppTheme.kBlackColor,
      ),
      maxFontSize: 24,
      minFontSize: 16,
      overflow: TextOverflow.ellipsis,
    );
  }
}

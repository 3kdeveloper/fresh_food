import '../../utils/exports.dart';

class SubTitleTextStyle extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;

  const SubTitleTextStyle({
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
        fontWeight: fontWeight ?? FontWeight.w500,
        fontSize: fontSize ?? 18,
        fontFamily: 'RobotoMono-Regular',
        color: color ?? AppTheme.kBlackColor,
      ),
      maxFontSize: 22,
      minFontSize: 14,
      overflow: TextOverflow.ellipsis,
    );
  }
}

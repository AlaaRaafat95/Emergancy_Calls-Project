import 'package:project/Constants/exports.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.title,
      this.color,
      this.fontSize,
      this.fontStyle});
  final String title;
  final Color? color;
  final double? fontSize;
  final FontStyle? fontStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: color ?? AppColors.redAccent,
          fontSize: fontSize ?? 25,
          fontStyle: fontStyle ?? FontStyle.normal),
    );
  }
}

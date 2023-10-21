import 'package:project/Constants/exports.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key,
      required this.child,
      this.margin,
      this.color,
      this.boxShadow});

  final List<BoxShadow>? boxShadow;
  final Widget child;
  final EdgeInsetsGeometry? margin;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: Localizations.localeOf(context).languageCode == "en"
            ? const EdgeInsets.symmetric(vertical: 7)
            : null,
        alignment: Alignment.center,
        margin: margin ?? const EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          boxShadow: boxShadow,
          border: Border.all(color: color ?? AppColors.redAccent),
          borderRadius: BorderRadius.circular(10),
        ),
        child: child);
  }
}

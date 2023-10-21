import 'package:project/Constants/exports.dart';

class Swip extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  const Swip(
      {super.key,
      required this.title,
      required this.icon,
      required this.color});

  @override
  Widget build(BuildContext context) {
    String language = Localizations.localeOf(context).languageCode;
    return CustomContainer(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      color: color,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: AppColors.white,
              size: language == "en" ? 28 : 30,
            ),
            CustomText(
              fontSize: language == "en" ? 18 : 19,
              color: AppColors.white,
              title: title,
            )
          ],
        ),
      ),
    );
  }
}

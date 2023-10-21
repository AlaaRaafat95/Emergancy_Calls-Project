import 'package:easy_localization/easy_localization.dart';
import 'package:project/Constants/exports.dart';

class FloatingButtonForHomePage extends StatelessWidget {
  const FloatingButtonForHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingButton(
      mainIcon: const Icon(
        Icons.settings_outlined,
      ),
      children: [
        SpeedDialChild(
          foregroundColor: Colors.red,
          label: tr("arabic"),
          onTap: () {
            AppViewModel().changeLanguage(context, "ar");
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
          labelStyle: const TextStyle(
              color: AppColors.redAccent,
              fontSize: 20,
              fontWeight: FontWeight.bold),
          child: Image.asset("assets/images/egypt.png"),
        ),
        SpeedDialChild(
          foregroundColor: Colors.red,
          label: tr("english"),
          onTap: () {
            AppViewModel().changeLanguage(context, "en");
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
          labelStyle: const TextStyle(
              color: AppColors.redAccent,
              fontSize: 20,
              fontWeight: FontWeight.bold),
          child: Image.asset(
            "assets/images/usa.png",
          ),
        ),
        SpeedDialChild(
          foregroundColor: Colors.red,
          label: tr("myRequests"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const RequestsPage(),
              ),
            );
          },
          labelStyle: const TextStyle(
              color: AppColors.redAccent,
              fontSize: 20,
              fontWeight: FontWeight.bold),
          child: const Icon(Icons.document_scanner_outlined),
        ),
      ],
    );
  }
}
